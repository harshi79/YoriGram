# Where to get `YoriGram.exe`

Pushing or merging the source code does **not** automatically create a Windows `.exe` unless a Windows build is run.

## Local Windows build output

After following [`docs/building-win.md`](building-win.md), the executable is produced here:

```text
D:\TBuild\tdesktop\out\Release\YoriGram.exe
```

For a debug build:

```text
D:\TBuild\tdesktop\out\Debug\YoriGram.exe
```

## Installer output

When the Windows packaging step is run, the installer name is expected to be similar to:

```text
yorigram-setup-x64.<version>.exe
```

The exact folder depends on the release/packaging command used.

## API credentials required

A real private build needs your own Telegram API credentials:

```text
TDESKTOP_API_ID=YOUR_API_ID
TDESKTOP_API_HASH=YOUR_API_HASH
```

Do not commit those credentials to the repository. Use local command-line values or encrypted CI secrets.

## GitHub Actions / Releases

This repository does not yet include a verified automatic Windows release pipeline. Until we add and test one, get the `.exe` by building locally on Windows.

If we add CI later, the build will be downloadable from either:

- GitHub Actions artifacts, or
- GitHub Releases.
