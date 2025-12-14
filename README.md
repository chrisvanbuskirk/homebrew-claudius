# Homebrew Tap for Claudius

This is the official Homebrew tap for [Claudius](https://github.com/chrisvanbuskirk/claudius), a local AI research briefing agent powered by Claude.

## Installation

```bash
brew tap chrisvanbuskirk/claudius
brew install --cask claudius
```

## Updating

```bash
brew upgrade --cask claudius
```

**Note:** Claudius also supports automatic in-app updates. When a new version is available, you'll see a banner in the app with a one-click "Restart to Update" option.

## Uninstalling

```bash
brew uninstall --cask claudius
```

To also remove configuration files:

```bash
brew uninstall --cask --zap claudius
```

This removes all data stored in `~/.claudius/` including your database, preferences, and API keys.

## Requirements

- macOS (Apple Silicon)
- Anthropic API key

## Features

- **Agentic Research**: Claude uses tools to actively research your topics
- **MCP Server Support**: Extend with Brave Search, Perplexity, and more
- **Daily Briefings**: Curated research cards with summaries and sources
- **Auto-Update**: Automatic update detection with in-app notifications
- **CLI**: Full command-line interface for automation
- **Privacy First**: All data stays on your machine

## About Claudius

Claudius is a macOS desktop application that delivers personalized daily research briefings using Claude. It runs a native Rust research agent that calls the Anthropic API to gather information on your configured topics and presents digestible briefing cards.

For more information, visit the [main repository](https://github.com/chrisvanbuskirk/claudius).
