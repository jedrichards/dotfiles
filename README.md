# dotfiles

Dotfiles designed for zsh on macOS Catalina and later.

### Usage

Clone the repo anywhere on your system, then point to its location in your `~/.zshenv` file.

```
ZDOTDIR=/path/to/this/repo
```

### Recommendations

If you're missing plugins, dependencies or recommended files then you'll be prompted to fix these when you open a new shell.

Current recommendations:

- A `.personal` file for personal settings like Git config
- [Starship](https://starship.rs) (Cross-shell prompt)
- [zsh-nvm](https://github.com/lukechilds/zsh-nvm) (Adds Node and npm management via nvm)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (Fish-like autosuggestions)