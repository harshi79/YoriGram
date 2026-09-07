# Import Notes

## AyuGram Desktop stable base

AyuGram Desktop has been imported as the stable base for YoriGram Desktop.

- Upstream repository: <https://github.com/AyuGram/AyuGramDesktop>
- Imported version: `v7.0.9`
- Imported commit: `032ad328549cff9f612d106d8660fbc03eb43130`
- Import date: 2026-09-07
- Import purpose: create a YoriGram-branded personal-use/private desktop experience while keeping AyuGram Desktop functionality mostly unchanged.

## Import method

The upstream `v7.0.9` tree was checked into this repository as the application base. YoriGram documentation was then added/updated on top.

The original upstream README for the imported AyuGram base is preserved at:

- [`docs/upstream/AYUGRAM_README.md`](upstream/AYUGRAM_README.md)

## Submodules

The imported base includes `.gitmodules` and submodule pointers used by AyuGram/Telegram Desktop. The submodule contents have not been initialized yet in this workspace.

Before building, initialize submodules according to the upstream build guide for the selected platform.

## Runtime service note

The first YoriGram rebrand pass avoids using the AyuGram auto-update prefix for YoriGram builds. Private YoriGram builds default auto-update to off and use YoriGram project links for update/download UI.

A minimal YoriGram remote-config placeholder is kept at [`docs/remote-config/desktop2.json`](remote-config/desktop2.json). Upstream support/donation defaults are otherwise preserved until we decide whether to remove, replace, or keep those screens.

## License note

The previous MIT-only starter repository status no longer describes the imported application code. The imported AyuGram/Telegram Desktop code is under the upstream GPLv3/OpenSSL-exception license stack shown in the root [`LICENSE`](../LICENSE) and upstream legal files.

YoriGram's private/personal-use goal does not remove those license obligations.
