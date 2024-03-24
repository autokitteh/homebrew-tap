# Homebrew Tap for autokitteh

## How do I install this formula?

```shell
brew install autokitteh/tap/autokitteh
```

Or

```shell
brew tap autokitteh/tap
brew install autokitteh
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## How do I update this formula manually?

```shell
brew update && brew upgrade

HOMEBREW_GITHUB_API_TOKEN=github_pat_secret \
  brew bump-formula-pr autokitteh/tap/autokitteh \
  --no-fork --version <NEW-VERSION> [--dry-run]
```
