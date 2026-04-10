# ClaudeBar

**Real-time Claude usage monitor for your macOS menu bar.**

Track your Claude Pro/Max session and weekly rate limits at a glance — no more surprise rate-limit walls.

![macOS](https://img.shields.io/badge/macOS-12%2B-blue) ![License](https://img.shields.io/badge/License-MIT-yellow) ![Version](https://img.shields.io/badge/version-1.4.2-green) [![GitHub Stars](https://img.shields.io/github/stars/eunggg0/homebrew-tap?style=social)](https://github.com/eunggg0/homebrew-tap/stargazers)

**[Homepage](https://site-seven-psi-19.vercel.app/)**

> If ClaudeBar saves you from hitting rate limits, consider giving it a ⭐ — it helps others find the project!

---

## Why ClaudeBar?

Claude's 5-hour session limit and 7-day weekly limit can stop you mid-flow without warning. ClaudeBar sits in your menu bar and shows both limits in real-time, so you always know where you stand.

## Features

- **Dual limit tracking** — 5-hour session + 7-day weekly, updated every 60 seconds
- **Menu bar display** — compact `S:42% W:27%` format, always visible
- **Color-coded status** — green/yellow/red based on usage level
- **Reset countdown** — know exactly when your limits reset
- **Usage prediction** — estimate when you'll hit the cap
- **Weekly heatmap** — 7-day usage distribution chart (Pro)
- **Token breakdown** — input/output/cache tokens with cost estimate (Pro)
- **Threshold alerts** — customizable in 5% increments (Pro)
- **Sonnet weekly limit** — separate Sonnet model tracking
- **Dark premium UI** — iStat Menus-inspired design
- **Korean / English** — bilingual interface
- **Auto-update** — checks for new versions automatically
- **OAuth API** — uses official Anthropic API, no scraping

## Install

```bash
brew install --cask eunggg0/tap/claude-usage-monitor
```

That's it. ClaudeBar appears in your menu bar automatically.

### Requirements

- macOS 12 (Monterey) or later
- [Claude desktop app](https://claude.ai/download) installed and logged in
- Claude Pro, Max, or Team subscription

## How It Works

ClaudeBar reads OAuth credentials from the Claude desktop app (stored in macOS Keychain) and queries the official Anthropic API every 60 seconds. No passwords, no API keys, no browser scraping. Token refresh is handled automatically.

## Update

```bash
brew upgrade --cask claude-usage-monitor
```

## Pro

Core monitoring is **free forever**. Pro ($1.99/mo) adds:

- Customizable threshold alerts (5% increments)
- GitHub-style usage heatmap
- Usage prediction engine
- CSV data export
- 5 menubar display styles

Subscribe at [Gumroad](https://x1gncode.gumroad.com/l/ijpinw) — activation is automatic, no license key needed.

## Uninstall

```bash
brew uninstall --cask claude-usage-monitor
```

## Links

- [Homepage](https://site-seven-psi-19.vercel.app/)
- [Releases](https://github.com/eunggg0/homebrew-tap/releases)

## License

MIT
