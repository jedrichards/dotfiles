# dotfiles

Dotfiles designed for zsh on macOS Catalina and later.

### Usage

Clone the repo anywhere on your system, then point to its location in your `~/.zshenv` file.

```
ZDOTDIR=/path/to/this/repo
```

### Recommendations

If you're missing plugins, dependencies or recommended files then you'll be prompted to fix these when you open a new shell.

- `.personal` file (for private settings)
- `.gitconfig.personal` (for private Git settings, like username and email)
- [Starship](https://starship.rs) (a fast cross-shell prompt)
- [zsh-nvm](https://github.com/lukechilds/zsh-nvm) (adds Node and npm management)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (Fish-like autosuggestions)