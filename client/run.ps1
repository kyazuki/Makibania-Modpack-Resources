# パック設定をダウンロード
Write-Host "パック設定をダウンロード中..."
try {
    Invoke-WebRequest -Uri "https://github.com/kyazuki/Makibania-Modpack-Resources/releases/download/v1.5.0/config.yaml" -OutFile "$PSScriptRoot\config.yaml" -ErrorAction Stop
}
catch {
    Write-Error ("パック設定のダウンロードに失敗しました。詳細: {0}" -f $_.Exception.Message)
    Read-Host "Press Enter key to exit..."
    exit 1
}
# インストーラーをダウンロードして実行
Write-Host "インストーラーをダウンロード中..."
try {
    Invoke-WebRequest -Uri "https://github.com/medi-torimorta/Makibania-Modpack-Installer/releases/download/v3.2.2%2B1.5.0/makibania-modpack-installer.exe" -OutFile "$PSScriptRoot\makibania-modpack-installer.exe" -ErrorAction Stop
}
catch {
    Write-Error ("インストーラーのダウンロードに失敗しました。詳細: {0}" -f $_.Exception.Message)
    Read-Host "Press Enter key to exit..."
    exit 1
}
Start-Process -FilePath "$PSScriptRoot\makibania-modpack-installer.exe" -NoNewWindow
