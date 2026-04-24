# Easifier App

Local web app for:

- fetching a product page from a source URL,
- extracting readable text,
- generating a concise client-ready summary,
- preparing English, Czech, or bilingual output,
- copying or exporting the result as TXT, Markdown, or HTML for email use.

## Run

From this folder:

```powershell
node server.js
```

Then open:

```text
http://localhost:3210
```

On Windows you can also run:

```powershell
.\start-easifier.ps1
```

## AI generation

The app works in two modes:

- **Without API key**: source fetch + fallback draft + copy/export tools.
- **With OpenAI API key**: polished bilingual summary generation.

You can provide the API key either:

- directly in the app UI, or
- as an environment variable before starting the server:

```powershell
$env:OPENAI_API_KEY="your_key_here"
node server.js
```

Optional:

```powershell
$env:OPENAI_MODEL="gpt-5-mini"
```

## Notes

- The app always keeps the source URL in the output.
- `mailto:` drafts are useful for shorter emails; for longer summaries, use copy/export.
- Some websites may block automated fetching or return incomplete HTML. In that case, paste the source text manually.
