# gaerae/tap

Homebrew tap for apps by [gaerae](https://github.com/gaerae).

## Install

```bash
brew install gaerae/tap/playpets
```

- Or tap once, then install by name:

```bash
brew tap gaerae/tap
brew install --cask playpets
```

## Casks

| Cask | App | Source |
|---|---|---|
| `playpets` | [PlayPets](https://playpets.gaerae.com) — desktop pets that talk to each other | [gaerae/playpets](https://github.com/gaerae/playpets) |

## Updates

- Each app's release workflow updates its cask here after a release is published.
- PlayPets updates itself in the app (`auto_updates true`); `brew upgrade` leaves it to that.
- Uninstall: `brew uninstall --cask playpets`; also remove app data: `brew uninstall --zap --cask playpets`.

## Notes

- PlayPets builds are not yet signed with an Apple Developer ID; macOS asks for confirmation on first launch.
- Report app problems in the app's own repository, not here.
- CI runs `brew style` and `brew audit` on every change to `Casks/`.

## License

- [MIT](LICENSE)
