# インストーラーをダウンロードして実行
Write-Host "構成情報をダウンロード中..."
try {
    Invoke-WebRequest -Uri "https://github.com/kyazuki/Makibania-Modpack-Resources/releases/latest/download/run.ps1" -OutFile "$PSScriptRoot\run.ps1" -ErrorAction Stop
}
catch {
    Write-Error ("構成情報のダウンロードに失敗しました。詳細: {0}" -f $_.Exception.Message)
    Read-Host "Press Enter key to exit..."
    exit 1
}
& "$PSScriptRoot\run.ps1"
