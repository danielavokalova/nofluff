$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

$port = 3210
$url = "http://localhost:$port"

Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$scriptDir'; node server.js"
Start-Sleep -Seconds 2
Start-Process $url
