# YoriGram Feature Backlog

This file is for features that YoriGram may add on top of AyuGram Desktop.

## Rule for features from other repos

We can use other repos in two ways:

1. **Port/copy code** only if the license is compatible with the AyuGram/Telegram Desktop license stack.
2. **Reimplement the idea** if the code license is incompatible, unclear, missing, or risky.

No proprietary or no-license code should be copied into YoriGram.

## Version 1 feature priority

Because AyuGram already has many advanced features, YoriGram v0.1/v1 should stay focused:

1. Stable Windows build.
2. YoriGram branding.
3. Private-user disclaimer.
4. Separate app identity/storage from AyuGram.
5. One or two genuinely useful new features from another repo, after review.

## Candidate feature table

| Feature | Source repo | License checked? | Plan | Status |
| --- | --- | --- | --- | --- |
| YoriGram branding | Internal | Yes | Implement after base builds | Planned |
| Private build disclaimer | Internal | Yes | Add to About/legal UI | Planned |
| Separate YoriGram app data path | Internal | Yes | Implement during rebrand | Planned |
| Feature from another client | TBD | No | Need repo URL and exact feature | Waiting |

## Feature ideas to discuss

Potential additions if AyuGram does not already have them:

- Better download queue/manager.
- Quick reply templates/snippets.
- Extra workspace/folder layout.
- Message translation helper.
- Local notes/tools panel.
- Per-chat privacy presets.
- Enhanced media gallery organization.
- Better hotkeys and power-user command palette.

## Safety review

Before adding a feature, answer:

1. Does it expose private messages, tokens, phone numbers, or local files?
2. Does it change read receipts, online state, deletions, or message history behavior?
3. Could it get private users banned or flagged?
4. Can we maintain it after upstream AyuGram updates?
5. Is the source license compatible?
