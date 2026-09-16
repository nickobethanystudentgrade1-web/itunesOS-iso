$Base = Join-Path $env:LOCALAPPDATA "iTunes-System-UI-1.0-19.2"

New-Item -ItemType Directory -Force `

    -Path "$Base\icons","$Base\config" | Out-Null

@'

{

  "name": "iTunes System UI",

  "target_versions": ["1.0-19.2"],

  "platform": "Windows 11",

  "mode": "user-theme-assets",

  "official_apple_software": false

}

'@ | Set-Content -Encoding UTF8 "$Base\config\theme.json"

Write-Host "iTunes System UI 1.0-19.2 installed."

Write-Host "Assets: $Base"