# iTunes System UI 1.0–19.2 — Windows 11
# User-level theme asset installer. Does not replace Windows system files.

$Base = Join-Path $env:LOCALAPPDATA "iTunes-System-UI-1.0-19.2"
New-Item -ItemType Directory -Force -Path "$Base\icons","$Base\config" | Out-Null

@'
{
  "name": "iTunes System UI",
  "target_versions": ["1.0-19.2"],
  "platform": "Windows 11",
  "mode": "user-theme-assets",
  "official_apple_software": false
}
'@ | Set-Content -Encoding UTF8 "$Base\config\theme.json"

@'
This package contains custom theme assets.
It intentionally does not modify protected Windows system files or DLLs.
Apply icons through Windows-compatible customization software.
'@ | Set-Content -Encoding UTF8 "$Base\README.txt"

Write-Host "Installed theme assets at $Base"
