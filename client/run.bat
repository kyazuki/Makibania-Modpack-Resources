@echo off
REM "文字コードをUTF-8に設定"
chcp 65001 > nul
REM "パック設定をダウンロード"
echo パック設定をダウンロード中...
bitsadmin /transfer installer /priority FOREGROUND https://github.com/kyazuki/Makibania-Modpack-Resources/releases/download/v1.2.1/config.yaml "%CD%\config.yaml" > nul
if not %errorlevel% == 0 (
    echo パック設定のダウンロードに失敗しました。 1>&2
    pause
    exit 1
)
REM "インストーラーをダウンロードして実行"
echo インストーラーをダウンロード中...
bitsadmin /transfer installer /priority FOREGROUND https://github.com/medi-torimorta/Makibania-Modpack-Installer/releases/download/v3.1.1%%2B1.2.1/makibania-modpack-installer.exe "%CD%\makibania-modpack-installer.exe" > nul
if not %errorlevel% == 0 (
    echo インストーラーのダウンロードに失敗しました。 1>&2
    pause
    exit 1
)
start /b makibania-modpack-installer.exe