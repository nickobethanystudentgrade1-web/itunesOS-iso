#!/bin/zsh
# iTunes System UI 1.0–19.2 — macOS theme installer
# User-level only; does not replace protected Apple system files.

set -eu
BASE="$HOME/Library/Application Support/iTunes-System-UI-1.0-19.2"
mkdir -p "$BASE/icons" "$BASE/config"

cat > "$BASE/config/theme.json" <<'JSON'
{
  "name": "iTunes System UI",
  "target_versions": ["1.0-19.2"],
  "platform": "macOS",
  "mode": "user-theme-assets",
  "official_apple_software": false
}
JSON

echo "Theme assets installed in:"
echo "$BASE"
echo
echo "Use a supported macOS customization tool to apply icons."
