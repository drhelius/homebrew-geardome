# Homebrew Tap for DrHelius Emulators

This is the official [Homebrew](https://brew.sh) tap for [DrHelius](https://github.com/drhelius) emulators.

## Available Emulators

| Emulator | System | Install Command |
|----------|--------|-----------------|
| [Gearboy](https://github.com/drhelius/Gearboy) | Game Boy / Game Boy Color | `brew install --cask drhelius/geardome/gearboy` |
| [Gearsystem](https://github.com/drhelius/Gearsystem) | Sega Master System / Game Gear / SG-1000 | `brew install --cask drhelius/geardome/gearsystem` |
| [Gearcoleco](https://github.com/drhelius/Gearcoleco) | ColecoVision | `brew install --cask drhelius/geardome/gearcoleco` |
| [Geargrafx](https://github.com/drhelius/Geargrafx) | TurboGrafx-16 / PC Engine / SuperGrafx | `brew install --cask drhelius/geardome/geargrafx` |
| [Gearlynx](https://github.com/drhelius/Gearlynx) | Atari Lynx | `brew install --cask drhelius/geardome/gearlynx` |

## Installation

First, add the tap:

```bash
brew tap drhelius/geardome
```

Then install any emulator:

```bash
brew install --cask gearboy
brew install --cask gearsystem
brew install --cask gearcoleco
brew install --cask geargrafx
brew install --cask gearlynx
```

Or install directly with a single command:

```bash
brew install --cask drhelius/geardome/geargrafx
```

## Updating

To update all emulators to their latest versions:

```bash
brew upgrade --cask
```

Or update a specific emulator:

```bash
brew upgrade --cask geargrafx
```

## Uninstallation

```bash
brew uninstall --cask geargrafx
```

To remove the tap:

```bash
brew untap drhelius/geardome
```

## License

This tap is provided under the GNU GPL v3 license.
