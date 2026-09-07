#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
SRC="${1:-$ROOT/design/source/yorigram-logo.png}"
GEN="$ROOT/design/generated/icons"

if ! command -v convert >/dev/null 2>&1; then
  echo "ImageMagick 'convert' is required but was not found." >&2
  exit 1
fi

if [[ ! -f "$SRC" ]]; then
  cat >&2 <<MSG
Missing source logo:
  $SRC

Put the selected PNG there with this exact filename, then rerun:
  ./tools/apply_yorigram_icon.sh
MSG
  exit 1
fi

mkdir -p "$GEN" \
  "$ROOT/Telegram/Resources/art/ayu/default" \
  "$ROOT/Telegram/Telegram/AppIcon-Default.icon/Assets" \
  "$ROOT/.github"

MASTER="$GEN/yorigram-icon-1024.png"

# Normalize to a square 1024px PNG. The selected logo is already square, but this
# keeps the workflow safe if the uploaded file has metadata, margins, or a
# slightly different aspect ratio.
convert "$SRC" \
  -auto-orient \
  -resize 1024x1024^ \
  -gravity center \
  -extent 1024x1024 \
  -strip \
  "$MASTER"

make_png() {
  local size="$1"
  local out="$2"
  mkdir -p "$(dirname "$out")"
  convert "$MASTER" -resize "${size}x${size}" -strip "$out"
}

# Main cross-platform resource icons.
make_png 16   "$ROOT/Telegram/Resources/art/icon16.png"
make_png 32   "$ROOT/Telegram/Resources/art/icon16@2x.png"
make_png 32   "$ROOT/Telegram/Resources/art/icon32.png"
make_png 64   "$ROOT/Telegram/Resources/art/icon32@2x.png"
make_png 48   "$ROOT/Telegram/Resources/art/icon48.png"
make_png 96   "$ROOT/Telegram/Resources/art/icon48@2x.png"
make_png 64   "$ROOT/Telegram/Resources/art/icon64.png"
make_png 128  "$ROOT/Telegram/Resources/art/icon64@2x.png"
make_png 128  "$ROOT/Telegram/Resources/art/icon128.png"
make_png 256  "$ROOT/Telegram/Resources/art/icon128@2x.png"
make_png 256  "$ROOT/Telegram/Resources/art/icon256.png"
make_png 512  "$ROOT/Telegram/Resources/art/icon256@2x.png"
make_png 512  "$ROOT/Telegram/Resources/art/icon512.png"
make_png 1024 "$ROOT/Telegram/Resources/art/icon512@2x.png"
make_png 1024 "$ROOT/Telegram/Resources/art/icon_round512@2x.png"
make_png 256  "$ROOT/Telegram/Resources/art/logo_256.png"
make_png 256  "$ROOT/Telegram/Resources/art/logo_256_no_margin.png"

# In-app Ayu/Yori default icon selector assets. We keep the upstream folder name
# because code references AyuAssets paths; only the product-facing image changes.
make_png 1024 "$ROOT/Telegram/Resources/art/ayu/default/app.png"

# macOS iconset assets.
make_png 16   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon16.png"
make_png 32   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon16@2x.png"
make_png 32   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon32.png"
make_png 64   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon32@2x.png"
make_png 128  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon128.png"
make_png 256  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon128@2x.png"
make_png 256  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon256.png"
make_png 512  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon256@2x.png"
make_png 512  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon512.png"
make_png 1024 "$ROOT/Telegram/Telegram/Images.xcassets/Icon.appiconset/icon512@2x.png"

make_png 16   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_16x16.png"
make_png 32   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_16x16@2x.png"
make_png 32   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_32x32.png"
make_png 64   "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_32x32@2x.png"
make_png 128  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_128x128.png"
make_png 256  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_128x128@2x.png"
make_png 256  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_256x256.png"
make_png 512  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_256x256@2x.png"
make_png 512  "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_512x512.png"
make_png 1024 "$ROOT/Telegram/Telegram/Images.xcassets/Icon.iconset/icon_512x512@2x.png"

make_png 1024 "$ROOT/Telegram/Telegram/AppIcon-Default.icon/Assets/app.png"
make_png 512 "$ROOT/.github/YoriGram.png"

# Build Windows ICOs with common icon sizes.
make_png 24 "$GEN/icon24.png"
convert \
  "$ROOT/Telegram/Resources/art/icon16.png" \
  "$GEN/icon24.png" \
  "$ROOT/Telegram/Resources/art/icon32.png" \
  "$ROOT/Telegram/Resources/art/icon48.png" \
  "$ROOT/Telegram/Resources/art/icon64.png" \
  "$ROOT/Telegram/Resources/art/icon128.png" \
  "$ROOT/Telegram/Resources/art/icon256.png" \
  "$ROOT/Telegram/Resources/art/icon256.ico"
cp "$ROOT/Telegram/Resources/art/icon256.ico" "$ROOT/Telegram/Resources/art/ayu/default/app_icon.ico"

# Make sure the in-app default icon PNG is bundled by Qt resources.
QRC="$ROOT/Telegram/Resources/qrc/ayu/ayu.qrc"
if [[ -f "$QRC" ]] && ! grep -q 'art/ayu/default/app.png' "$QRC"; then
  python3 - "$QRC" <<'PY'
from pathlib import Path
import sys
path = Path(sys.argv[1])
text = path.read_text(encoding='utf-8')
needle = '        <file alias="art/ayu/default/app.svg">../../art/ayu/default/app.svg</file>\n'
insert = '        <file alias="art/ayu/default/app.png">../../art/ayu/default/app.png</file>\n'
if insert not in text:
    text = text.replace(needle, insert + needle)
path.write_text(text, encoding='utf-8')
PY
fi

# Make the default macOS layered icon use the generated PNG instead of the old
# upstream SVG. This is not critical for Windows, but keeps assets consistent.
MAC_ICON_JSON="$ROOT/Telegram/Telegram/AppIcon-Default.icon/icon.json"
if [[ -f "$MAC_ICON_JSON" ]]; then
  python3 - "$MAC_ICON_JSON" <<'PY'
from pathlib import Path
import sys
path = Path(sys.argv[1])
text = path.read_text(encoding='utf-8')
text = text.replace('"image-name" : "app.svg"', '"image-name" : "app.png"')
path.write_text(text, encoding='utf-8')
PY
fi

cat <<MSG
YoriGram icon assets generated from:
  $SRC

Master:
  $MASTER

Updated Windows/icon resources, in-app default icon, macOS iconsets, and .github/YoriGram.png.
MSG
