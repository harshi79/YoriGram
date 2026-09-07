## API credentials

YoriGram builds must use your own Telegram API credentials.

Do **not** commit private API credentials into this repository.

To build locally, obtain an `api_id` and `api_hash` from Telegram's official developer portal:

- <https://core.telegram.org/api/obtaining_api_id>

Then pass them at configure time:

```bash
-D TDESKTOP_API_ID=YOUR_API_ID -D TDESKTOP_API_HASH=YOUR_API_HASH
```

For GitHub Actions or other CI later, store them as encrypted secrets instead of writing them into source files.

Telegram Desktop's public/test credentials are not suitable for deployed private builds.
