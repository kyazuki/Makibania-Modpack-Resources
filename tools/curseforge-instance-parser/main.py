import argparse
from dataclasses import dataclass
from pathlib import Path
import json
import sys
import yaml


@dataclass
class Arguments:
    instance_path: Path
    config_path: Path


@dataclass
class CurseForgeMod:
    name: str
    project_id: int
    file_id: int
    hash: str | None


def parse_args() -> Arguments:
    parser = argparse.ArgumentParser(
        description="CurseForgeのインスタンス構成ファイル(minecraftinstance.json)を解析し、config.yamlと比較して変更点を報告します。"
    )
    parser.add_argument("instance_path", type=Path, help="minecraftinstance.jsonのパス")
    parser.add_argument(
        "config_path",
        type=Path,
        help="config.yamlのパス",
    )
    args = parser.parse_args(namespace=Arguments)
    if not args.instance_path.exists() or not args.instance_path.is_file():
        parser.error(f"minecraftinstance.json is not found: {args.instance_path}")
    if not args.config_path.exists() or not args.config_path.is_file():
        parser.error(f"config.yaml is not found: {args.config_path}")
    return args


def check_add_or_update(instance_path: Path, config_path: Path) -> tuple[list, list]:
    # minecraftinstance.jsonからインストールされているModを取得
    instance = json.loads(instance_path.read_text())
    installed_mods = instance.get("installedAddons")
    if installed_mods is None:
        print("Failed to parse minecraftinstance.json.", file=sys.stderr)
        sys.exit(1)
    # config.yamlからCurseForge Modの設定を取得
    config = yaml.safe_load(config_path.read_text())
    mod_configs = config.get("mods")
    if mod_configs is None:
        print("Failed to parse config.yaml.", file=sys.stderr)
        sys.exit(2)
    mod_configs = filter(lambda m: m["type"] == "curseforge", mod_configs)
    mod_configs = dict(map(lambda m: (m["projectId"], m), mod_configs))
    # 追加されたModと更新されたModをチェック
    add_mods: list[CurseForgeMod] = []
    update_mods: list[CurseForgeMod] = []
    for mod in installed_mods:
        name = mod["name"]
        project_id = mod["installedFile"]["projectId"]
        file_id = mod["installedFile"]["id"]
        hash = None
        for h in mod["installedFile"].get("hashes", []):
            if h["type"] == 1:
                hash = h["value"]
                break
        mod = CurseForgeMod(
            name=name,
            project_id=project_id,
            file_id=file_id,
            hash=hash,
        )
        config = mod_configs.get(project_id)
        if config is None:
            add_mods.append(mod)
            continue
        if config.get("fileId") == file_id:
            if config.get("hash") != hash:
                print(f"Invalid Hash: {name}({project_id})", file=sys.stderr)
            continue
        update_mods.append(mod)
    # 名前順にソート
    add_mods.sort(key=lambda m: m.name)
    update_mods.sort(key=lambda m: m.name)
    return add_mods, update_mods


def report_changes(
    add_mods: list[CurseForgeMod], update_mods: list[CurseForgeMod]
) -> None:
    if not add_mods and not update_mods:
        print("No changes detected.")
        return
    if add_mods:
        print(f"New Mods: {len(add_mods)}")
        for mod in add_mods:
            print(f"\tName: {mod.name}")
            print(f"\t\tProject ID: {mod.project_id}")
            print(f"\t\tFile ID: {mod.file_id}")
            print(f"\t\tHash: {mod.hash}")
    if update_mods:
        print(f"Updated Mods: {len(update_mods)}")
        for mod in update_mods:
            print(f"\tName: {mod.name}")
            print(f"\t\tProject ID: {mod.project_id}")
            print(f"\t\tFile ID: {mod.file_id}")
            print(f"\t\tHash: {mod.hash}")


def main():
    args = parse_args()
    add_mods, update_mods = check_add_or_update(args.instance_path, args.config_path)
    report_changes(add_mods, update_mods)


if __name__ == "__main__":
    main()
