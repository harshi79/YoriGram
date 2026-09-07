# Rebrand Inventory

This file tracks where AyuGram identity appears and how YoriGram should handle it.

## Current search snapshot

After importing AyuGram Desktop `v7.0.9`, a first text search found approximate occurrences in hundreds of files. Many occurrences are developer comments such as `// AyuGram includes` or internal identifiers such as `ayu_...` translation keys. Those should not all be blindly renamed.

Initial non-binary search, excluding root license/legal and preserved upstream README, found:

- `AyuGram`: about 351 files
- `ayugram`: about 22 files
- `AYUGRAM`: about 3 files

## Replace first: product-facing identity

These are high-priority user-facing or build-facing places to rebrand:

- `Telegram/build/setup.iss` — Windows installer product name, URL, executable name, output file name.
- `Telegram/Resources/winrc/Telegram.rc` — Windows executable metadata.
- `Telegram/Resources/winrc/Updater.rc` — Windows updater metadata.
- `Telegram/SourceFiles/platform/win/windows_app_user_model_id.cpp` — Windows AppUserModelID and shortcut names.
- `Telegram/SourceFiles/platform/win/specific_win.cpp` — desktop shortcut cleanup names.
- `Telegram/SourceFiles/window/main_window.cpp` — main window fallback title.
- `Telegram/SourceFiles/window/window_main_menu.cpp` — menu footer product link/name.
- `Telegram/SourceFiles/intro/intro_widget.cpp` — intro footer version label.
- `Telegram/Resources/langs/lang.strings` — user-facing AyuGram preference/about/alert strings.
- Linux/macOS metadata later if cross-platform support remains active.

## Keep or review carefully

These should not be renamed blindly:

- `LICENSE` and `LEGAL`.
- Upstream credits and preserved upstream docs.
- Copyright notices.
- Developer comments that document AyuGram-origin changes.
- Internal source folder names like `Telegram/SourceFiles/ayu` unless there is a strong maintenance reason.
- Translation key IDs such as `ayu_AyuPreferences`; changing keys can break code references.

## YoriGram wording standard

Use this wording where a short product notice is needed:

> YoriGram is an unofficial personal-use desktop client based on AyuGram Desktop and Telegram Desktop.

Use this wording where a legal/private notice is needed:

> YoriGram is a private/personal-use rebrand experience based on AyuGram Desktop. It is not affiliated with Telegram, AyuGram, Radolyn Labs, or any upstream maintainer.

## Rebrand status

- Root documentation: done for the first private/personal-use notice.
- Stable AyuGram base import: done using `v7.0.9`.
- First product-facing code/UI rebrand pass: started.
- Windows app name, executable output name, installer metadata, AppUserModelID, window title, About box, tray text, crash-window text, Linux desktop metadata, macOS visible menu/title labels, and main Ayu/Yori settings labels: rebranded in the first pass.
- Default auto-update behavior: set to off for private builds; update/download UI points to the YoriGram repository/releases instead of AyuGram releases.
- Remote-config primary URL: changed to a YoriGram placeholder JSON file in this repository.
- Legal/upstream attribution: intentionally preserved.
- Full asset/icon replacement: pending.
- Windows build verification: pending.

## Known remaining AyuGram references

Some AyuGram references intentionally remain for now:

- legal/license/credit text;
- upstream-preserved documentation;
- source comments that mark AyuGram-origin code;
- internal identifiers and paths such as `ayu_...` and `Telegram/SourceFiles/ayu`, because renaming those blindly could break code;
- upstream services/support references that need a separate product decision.
