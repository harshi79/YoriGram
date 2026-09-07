# YoriGram Rebrand Plan

Goal: use AyuGram Desktop as the base while making the shipped app clearly YoriGram.

## Core rule

Replace AyuGram branding in user-facing product identity, but **do not remove legal attribution**.

That means:

- UI name: YoriGram.
- Executable/build name: YoriGram where practical.
- App folders/config identifiers: YoriGram, preferably separate from AyuGram/Telegram Desktop.
- About/legal pages: must still say that YoriGram is based on AyuGram Desktop and Telegram Desktop.
- License files, copyright notices, and upstream credits: keep them.

## What should change

### App identity

- Window title.
- App display name.
- Executable/installer name.
- Desktop shortcut name.
- Start menu name.
- Windows app metadata.
- Internal application name constants where safe.
- Build artifact names.

### Visual branding

- App icon.
- Splash/intro artwork if any.
- About screen logo/name.
- Installer graphics if any.

### Settings/About text

Add a clear statement like:

> YoriGram is an unofficial private desktop Telegram client based on AyuGram Desktop and Telegram Desktop. It is not affiliated with Telegram, AyuGram, or their maintainers.

### Storage and sessions

Prefer a separate YoriGram data directory instead of reusing AyuGram or Telegram Desktop storage. This avoids accidentally mixing sessions, settings, caches, or update channels.

Possible later feature: one-time import/migration from AyuGram settings, only if safe.

## What should not change blindly

Do not blindly replace every occurrence of `AyuGram` if it appears in:

- license text;
- copyright headers;
- upstream credits;
- changelogs describing upstream releases;
- documentation that must identify the source project;
- third-party dependency notices.

For legal and maintenance reasons, those names should remain, usually with extra YoriGram context.

## Rebrand workflow

1. Import AyuGram Desktop base.
2. Build once before changing branding.
3. Search occurrences:
   - `AyuGram`
   - `ayugram`
   - `AYUGRAM`
   - AyuGram package IDs or app IDs
   - icon/resource names
4. Classify each occurrence:
   - UI/product identity: replace.
   - build identity: replace carefully.
   - legal/upstream attribution: keep.
   - source comments/history: usually keep.
5. Apply small batches of changes.
6. Build after each major batch.
7. Add YoriGram private-client disclaimer in About/legal UI.

## First rebrand milestone

Version label idea:

`YoriGram Desktop Preview 0.1 — based on AyuGram Desktop`

This keeps the private build honest while making the app name clear to users.
