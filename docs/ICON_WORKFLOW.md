# YoriGram Icon Workflow

The selected YoriGram logo source should be saved as:

```text
design/source/yorigram-logo.png
```

Then run:

```bash
./tools/apply_yorigram_icon.sh
```

The script normalizes the source image to a square 1024px master and updates the app icon assets used by the desktop client.

## Generated/updated targets

- `Telegram/Resources/art/icon16.png`
- `Telegram/Resources/art/icon16@2x.png`
- `Telegram/Resources/art/icon32.png`
- `Telegram/Resources/art/icon32@2x.png`
- `Telegram/Resources/art/icon48.png`
- `Telegram/Resources/art/icon48@2x.png`
- `Telegram/Resources/art/icon64.png`
- `Telegram/Resources/art/icon64@2x.png`
- `Telegram/Resources/art/icon128.png`
- `Telegram/Resources/art/icon128@2x.png`
- `Telegram/Resources/art/icon256.png`
- `Telegram/Resources/art/icon256@2x.png`
- `Telegram/Resources/art/icon512.png`
- `Telegram/Resources/art/icon512@2x.png`
- `Telegram/Resources/art/icon_round512@2x.png`
- `Telegram/Resources/art/logo_256.png`
- `Telegram/Resources/art/logo_256_no_margin.png`
- `Telegram/Resources/art/icon256.ico`
- `Telegram/Resources/art/ayu/default/app.png`
- `Telegram/Resources/art/ayu/default/app_icon.ico`
- `Telegram/Telegram/Images.xcassets/Icon.appiconset/*`
- `Telegram/Telegram/Images.xcassets/Icon.iconset/*`
- `Telegram/Telegram/AppIcon-Default.icon/Assets/app.png`
- `.github/YoriGram.png`

## Notes

- The source PNG can contain text, but very small icon sizes will lose text detail. The circular symbol should remain recognizable.
- The generated Windows `.ico` includes multiple sizes for taskbar, shortcuts, and installer metadata.
- The script keeps upstream AyuGram legal/source comments untouched; it only updates YoriGram product assets.
