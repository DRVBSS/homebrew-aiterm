# DRVBSS/homebrew-aiterm

Homebrew tap for [**AITerm**](https://ai-term.com/) — a native macOS terminal with AI built into the command loop (propose → approve → run, plus `/fix` and `/explain`).

## Install

```sh
brew install --cask drvbss/aiterm/ai-term
```

Or tap first, then install:

```sh
brew tap drvbss/aiterm
brew install --cask ai-term
```

## Updates

AITerm updates itself via its built-in Sparkle updater (EdDSA-signed appcast), so the cask is marked `auto_updates true` — `brew upgrade` won't fight the in-app updater. The cask version is kept in sync with the [appcast](https://ai-term.com/appcast.xml) via `brew livecheck`.

## Uninstall

```sh
brew uninstall --cask ai-term          # remove the app
brew uninstall --zap --cask ai-term    # also remove app data/preferences
```
