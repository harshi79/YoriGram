# Contributing to YoriGram Desktop

YoriGram Desktop is a personal-use/private rebrand experience based on AyuGram Desktop and Telegram Desktop.

This repository is not affiliated with Telegram, AyuGram, Radolyn Labs, or any upstream maintainer. Keep upstream attribution and license notices intact.

## Accepted contributions

For now, contributions should be limited to:

- YoriGram branding fixes.
- Build/documentation fixes for the private Windows desktop target.
- Small bug fixes that keep AyuGram Desktop behavior mostly unchanged.
- Carefully reviewed feature additions that are license-compatible and not already present in AyuGram Desktop.

## Build instructions

See the local docs:

- `docs/building-win.md`
- `docs/WINDOWS_EXE.md`
- `docs/api_credentials.md`

Use your own Telegram API credentials at configure time. Do not commit API credentials to this repository.

## Upstream sources

The current base is AyuGram Desktop stable `v7.0.9`.

When pulling future upstream changes, review them carefully and keep the YoriGram private-use notice, branding, build docs, and attribution intact.

## Pull request expectations

- Keep changes small and focused.
- Do not mix code changes with unrelated whitespace cleanup.
- Preserve legal notices for AyuGram Desktop and Telegram Desktop.
- Test what you changed where practical.
- Document untested build/runtime limitations clearly.
