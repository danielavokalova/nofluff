# Easifier

Easifier is a small local web app for turning long product pages into clear, client-ready summaries that are easy to copy into email.

It is designed for workflows where you want to:

- paste a source URL,
- extract readable page content,
- generate a concise English summary, Czech summary, or both,
- keep the source link visible,
- copy the result cleanly,
- export it as plain text, Markdown, or HTML for email use.

## Current state

Included today:

- local web UI,
- source page fetch and text extraction,
- EN / CZ / bilingual output mode,
- copy-to-clipboard actions,
- TXT / MD / HTML export,
- `mailto:` draft shortcut,
- optional OpenAI-powered structured summary generation,
- a first sample product summary in [gol-ibe.md](./gol-ibe.md).

## Project structure

- [app](./app) - local web application
- [app/README.md](./app/README.md) - app-specific run instructions
- [gol-ibe.md](./gol-ibe.md) - first manually prepared product summary

## Run

From the `easifier` folder:

```powershell
npm start
```

Then open:

```text
http://localhost:3210
```

## Optional AI mode

You can run the app without AI, but for polished bilingual summaries you can provide an OpenAI API key:

```powershell
$env:OPENAI_API_KEY="your_key_here"
npm start
```

Optional model override:

```powershell
$env:OPENAI_MODEL="gpt-5-mini"
```

## GitHub readiness

This folder is prepared to be used as its own repository.

Recommended next step:

1. Create a new GitHub repository named `easifier`
2. Initialize git in this folder if needed
3. Commit the files
4. Add the GitHub remote
5. Push
