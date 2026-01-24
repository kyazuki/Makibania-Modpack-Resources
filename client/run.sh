#!/bin/bash
cd "$(dirname "$0")"
echo パック設定をダウンロード中...
curl -OLsSf https://github.com/kyazuki/Makibania-Modpack-Resources/releases/download/v1.4.0/config.yaml 2>/dev/null
if [ $? -ne 0 ]; then
    echo パック設定のダウンロードに失敗しました。 1>&2
    read -n 1 -p "Press any key to exit..."
    exit 1
fi
echo インストーラーをダウンロード中...
curl -OLsSf https://github.com/medi-torimorta/Makibania-Modpack-Installer/releases/download/v3.2.1+1.4.0/makibania-modpack-installer 2>/dev/null
if [ $? -ne 0 ]; then
    echo インストーラーのダウンロードに失敗しました。 1>&2
    read -n 1 -p "Press any key to exit..."
    exit 1
fi
chmod +x makibania-modpack-installer
./makibania-modpack-installer &
