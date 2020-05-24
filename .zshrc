# Aliases
alias ls="ls -GlAhF"

# Symlink gitconfig
ln -sf "$HOME/Repos/dotfiles/.gitconfig" "$HOME/.gitconfig"

# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY            # append to history file
setopt HIST_NO_STORE             # Don't store history commands

# Misc
export PATH=/usr/local/bin:$PATH # Prioritise brews
export EDITOR="nano"

# Personal settings
PERSONAL="$ZDOTDIR/.personal"
if [ -f "$PERSONAL" ];
then
    source "$PERSONAL"
else
    echo "\nRecommendation: Create a personal file at $PERSONAL to contain personal settings. Example contents:"
    echo ""
    echo "  git config --global user.name \"<github username>\""
    echo "  git config --global user.email \"<github email>\""
fi

# NVM
ZSH_NVM="$HOME/Repos/zsh-nvm/zsh-nvm.plugin.zsh"
if [ -f "$ZSH_NVM" ];
then
    export NVM_LAZY_LOAD=true
    export NVM_DIR="$HOME/Repos/nvm"
    export NVM_AUTO_USE=true
    source "$ZSH_NVM"
else
    echo "\nRecommendation: Install zsh-nvm at $ZSH_NVM"
fi

# Pure prompt
PURE="$HOME/Repos/pure"
if [ -d "$PURE" ];
then
    fpath+="$PURE"
    autoload -U promptinit; promptinit
    prompt pure
else
    echo "\nRecommendation: Install Pure Prompt at $PURE"
fi