# YoriGram Desktop Project Plan

## Direction

YoriGram will start as a **desktop-first unofficial Telegram client**, focused on laptop and PC users. The first practical build target is Windows, producing an `.exe` or Windows installer for a small private group.

This project is intended for **limited private use** and **non-commercial development**. That statement describes project intent only; it does not override any open-source license terms from upstream projects.

## Selected technical path

YoriGram will use **AyuGram Desktop** as the primary base.

For a real desktop Telegram client, we should not build the Telegram protocol, media stack, login flow, and sync engine from scratch at the beginning. That would take too long and would create unnecessary security risk.

Recommended path:

1. Import/fork AyuGram Desktop as the base.
2. Preserve its license, source history/attribution, and notices.
3. Keep AyuGram's existing behavior/features intact unless there is a security, branding, or build reason to change something.
4. Make YoriGram-specific branding and configuration changes.
5. Then add custom features gradually from other compatible sources or from our own implementation.

## Candidate upstream bases

### 1. Telegram Desktop

Pros:

- Official desktop codebase.
- Strong baseline for login, chat sync, media, calls, updates, and desktop behavior.
- Best long-term compatibility with Telegram features.

Cons:

- Large C++/Qt codebase.
- Build setup is heavy.
- Custom feature work can be complex.

### 2. AyuGram Desktop

Pros:

- Already a desktop Telegram fork.
- Includes customization-oriented and advanced-client ideas.
- Better aligned with the kind of feature remix YoriGram wants.

Cons:

- Still inherits Telegram Desktop complexity.
- We must carefully follow its license and attribution requirements.
- Some features may need privacy/security review before shipping to private users.

### 3. Other desktop forks

We can review other repos later, but we should avoid mixing code randomly. Every imported piece needs license review and attribution.

## License approach

Because likely bases such as Telegram Desktop and AyuGram Desktop use GPL-family licenses, YoriGram should expect to follow GPL-compatible obligations if their code is imported.

Practical rule:

- Before importing upstream app code, confirm the exact license of the selected base.
- Keep upstream `LICENSE`, `NOTICE`, copyright headers, and credits.
- Update this repository's license if required.
- Make sure private users who receive binaries can access the corresponding source when the license requires it.

The phrase "private and non-commercial" must not be treated as a replacement for license compliance.

## Initial implementation phases

### Phase 0 — Decision

- Choose upstream base: Telegram Desktop, AyuGram Desktop, or another desktop fork.
- Decide whether YoriGram will be Windows-only first or cross-platform desktop from day one.
- Decide the first custom features.

### Phase 1 — Repository setup

Status: started.

- Imported AyuGram Desktop `v7.0.9` stable base.
- Preserved upstream license/legal files.
- Added YoriGram documentation, import notes, and attribution.
- Started Windows-first YoriGram product identity rebrand.
- Windows build notes still need validation.

### Phase 2 — First Windows build

- Build the unmodified or minimally modified upstream app.
- Confirm login and basic Telegram usage works.
- Produce a local test `.exe` or installer.

### Phase 3 — YoriGram rebrand

- App name: YoriGram.
- Package/application identifiers.
- Icon and splash assets.
- About screen/disclaimer.
- Private build labeling.

### Phase 4 — YoriGram features

Possible feature buckets:

- UI themes and appearance presets.
- Advanced privacy controls.
- Better downloads/media management.
- Custom folders/tabs/workspace layout.
- Message tools such as templates, quick replies, filters, or translation.
- Streamer/private-screen mode.

Each feature should be reviewed for safety, maintainability, and upstream compatibility before implementation.

### Phase 5 — Private distribution

- Signed private builds.
- Simple changelog.
- Source/archive availability as required by licenses.
- Clear warning that this is an unofficial private client.

## Current decisions

- Use AyuGram Desktop as the base.
- Use stable `v7.0.9`, not the moving `dev` branch.
- Keep AyuGram features/functionality mostly the same.
- Rebrand the product-facing interface and build identity to YoriGram.
- Document YoriGram as a personal-use/private rebrand experience.

## Immediate next questions

1. Should Windows be the only active first target, or should Linux/macOS metadata also be rebranded now?
2. Which other repo and exact feature should we review first for YoriGram-only additions?
3. What icon/logo style should YoriGram use for the first private `.exe` build?
