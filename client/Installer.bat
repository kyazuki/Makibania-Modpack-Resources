@echo off
REM "文字コードをUTF-8に設定"
chcp 65001 > nul
REM "インストーラーをダウンロードして実行"
echo 構成情報をダウンロード中...
bitsadmin /transfer installer /priority FOREGROUND https://github.com/kyazuki/Makibania-Modpack-Resources/releases/latest/download/run.bat "%CD%\run.bat" > nul
if not %errorlevel% == 0 (
    echo 構成情報のダウンロードに失敗しました。 1>&2
    pause
    exit 1
)
call run.bat