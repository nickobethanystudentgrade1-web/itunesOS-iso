#!/system/bin/sh
# iTunes System UI 1.0–19.2 — Android theme installer
# Safe/no-root framework: installs user-accessible theme assets only.

set -eu
PKG="iTunes_System_UI_1.0-19.2"
BASE="${HOME:-/sdcard}/$PKG"
mkdir -p "$BASE/icons" "$BASE/config"

cat > "$BASE/config/theme.json" <<'JSON'
{
  "name": "iTunes System UI",
  "target_versions": ["1.0-19.2"],
  "platform": "Android",
  "mode": "user-theme-assets",
  "official_apple_software": false
}
JSON

cat > "$BASE/README.txt" <<'TXT'
Copy the generated icons into a launcher/theme app that supports custom icons.
This installer intentionally does not modify /system, /product, /vendor,
framework files, APK signatures, or protected Android UI components.
TXT

echo "Installed theme assets at: $BASE"
echo "Use a compatible launcher/theme manager to apply the icons."
