# <sup>●</sup><sub>files</sub>

## Installation
```bash
git clone https://github.com/ljungmark/dotfiles "${HOME}/dotfiles" && cd "${HOME}/dotfiles" && sudo find . -name "*.sh" -exec chmod +x {} \; && sudo ./install.sh
```

## Navigate this repository
* [Attributions](./docs/Attributions.md)
* [Changelog](./docs/Changelog.md)
* [Features](#features)
* [Utilities](#utilities)
* [Versioning Policy](./docs/Versioning.md)

## Features
### [Typefaces](./scripts/typefaces.sh) <kbd>MacOS</kbd> <kbd>Arch</kbd> <kbd>Windows</kbd>
* [Fira Code](https://github.com/tonsky/FiraCode), used for the documents in the code editor.
* [Geist Mono](https://github.com/vercel/geist-font), used for the code editor user interface.

## Utilities
* [Automatic detection of operating system](./scripts/utility/system.sh)  
* [ANSI color aliases](./scripts/utility/colors.sh)
