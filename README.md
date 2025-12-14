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

## Uninstalling

```bash
brew uninstall --cask claudius
```

To also remove configuration files:

```bash
brew uninstall --cask --zap claudius
```

## About Claudius

Claudius is a macOS desktop application that delivers personalized daily research briefings using Claude. It runs a native Rust research agent that calls the Anthropic API to gather information on your configured topics and presents digestible briefing cards.

For more information, visit the [main repository](https://github.com/chrisvanbuskirk/claudius).
