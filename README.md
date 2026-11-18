# Vessup — Homebrew tap

Homebrew casks for apps by Vessup.

## Cab

[**Cab**](https://cablauncher.com) is a drop-in replacement for the macOS
⌘-Tab application switcher, with a launcher, snippets, notes, clipboard history
and window management. It needs macOS 14 or later.

```bash
brew install --cask vessup/tap/cab
```

Update with `brew upgrade --cask cab`. `brew uninstall --zap --cask cab` also
removes Cab's settings and data.

(`vessup/tap` resolves to this repository, `github.com/Vessup/homebrew-tap`.)

## How releases get here

Cab's source is private, so its signed and notarized disk images are published
as this repository's [releases](https://github.com/Vessup/homebrew-tap/releases),
tagged `cab-vX.Y.Z`. Pushing a `vX.Y.Z` tag in the Cab repository runs its
release workflow, which builds and notarizes the app, creates the release here,
and commits the new `version` and `sha256` to [`Casks/cab.rb`](Casks/cab.rb)
as `cab X.Y.Z`.

Edit the cask here directly for anything else (`brew style Casks/cab.rb`
checks it), but keep its `version` and `sha256` on one line each: the release
workflow rewrites those two lines.

> Until the first `cab-v*` release exists, `Casks/cab.rb` holds a placeholder
> checksum and `brew install` fails.
