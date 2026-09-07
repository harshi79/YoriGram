# Upstream Sources

This file records the upstream projects that YoriGram plans to use, study, or fork.

## Primary base: AyuGram Desktop

- Repository: <https://github.com/AyuGram/AyuGramDesktop>
- Imported version: `v7.0.9` stable
- Imported commit: `032ad328549cff9f612d106d8660fbc03eb43130`
- Import date: 2026-09-07
- Default branch observed: `dev`
- Observed `dev` HEAD at planning time: `db3b9891cb0b04ebb7d8c0e71ada3bcc669b910a`
- Upstream relationship: AyuGram Desktop is a fork of Telegram Desktop.

YoriGram uses AyuGram Desktop as the primary base. The intended product is a YoriGram-branded personal-use/private desktop experience that keeps AyuGram behavior/features largely intact, then adds selected YoriGram-only additions after license review.

## Original upstream: Telegram Desktop

- Repository: <https://github.com/telegramdesktop/tdesktop>
- License family: GPLv3 with OpenSSL exception, as used by Telegram Desktop and inherited by compatible forks.

## Licensing rules for upstream imports

When YoriGram imports or modifies code from AyuGram Desktop, Telegram Desktop, or another GPL-family desktop client, we must:

1. Keep the applicable upstream license file and copyright notices.
2. Mark YoriGram as a modified/unofficial client.
3. Preserve attribution to AyuGram Desktop and Telegram Desktop.
4. Keep corresponding source available to every private user who receives a binary build, if the license requires it.
5. Avoid mixing in code from incompatible licenses.

The fact that YoriGram is intended for private, limited, non-commercial use does not remove upstream license obligations.

## Future feature-source candidates

Any additional repo we use for features must be reviewed here before code is copied or ported.

For each candidate, record:

- repository URL;
- exact commit/tag;
- license;
- feature(s) to study or port;
- whether code can be copied, must be rewritten, or cannot be used.
