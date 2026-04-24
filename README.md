# Easifier

Easifier is a small web app for turning long product pages into clear, client-ready summaries that are easy to copy into email.

It is designed for workflows where you want to:

- paste a source URL,
- extract readable page content,
- generate a concise English summary, Czech summary, or both,
- keep the source link visible,
- copy the result cleanly,
- export it as plain text, Markdown, or HTML for email use.

## Current state

Included today:

- public GitHub Pages web UI,
- local Node version for fuller fetch support,
- source page fetch and text extraction,
- EN / CZ / bilingual output mode,
- copy-to-clipboard actions,
- TXT / MD / HTML export,
- `mailto:` draft shortcut,
- optional OpenAI-powered structured summary generation,
- a first sample product summary in [gol-ibe.md](./gol-ibe.md).

## Project structure

- [docs](./docs) - public GitHub Pages site
- [app](./app) - local Node-based version
- [app/README.md](./app/README.md) - app-specific run instructions
- [gol-ibe.md](./gol-ibe.md) - first manually prepared product summary

## Public web

GitHub Pages can host Easifier as a public static website. GitHub documents Pages as a static hosting service for HTML, CSS, and JavaScript files, typically published at `https://<owner>.github.io/<repositoryname>` for project sites:

- [What is GitHub Pages?](https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages)
- [Creating a GitHub Pages site](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site)

For this reason, the public Pages version keeps secrets out of the repository and runs OpenAI calls directly from the browser only when you paste your own API key.

## Local run

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

## Notes

- The public Pages version may not be able to fetch text from every external site because browsers enforce CORS.
- When direct fetch is blocked, paste the source text manually and continue.
- The local Node app in [app](./app) remains the better option when you need stronger source fetching.
