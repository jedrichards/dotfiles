# Aliases
alias ls="ls -GlAhF"

# Show package.json scripts
scriptz () {
  jq '.scripts' package.json
}

# Open Chrome Canary with CORS disabled
nocorscanary() {
  mkdir -p /tmp/nocorscanary
  open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir=/tmp/nocorscanary
}

# Symlink gitconfig
ln -sf "$ZDOTDIR/.gitconfig" "$HOME/.gitconfig"

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

# Shell completions

autoload -Uz compinit && compinit -d "$HOME/.zcompdump" # Enable zsh completions

# Personal settings

PERSONAL="$ZDOTDIR/.personal"

if [ -f "$PERSONAL" ];
then
    source "$PERSONAL"
else
    echo "\nRecommendation: Create a personal file at $PERSONAL to contain any personal settings."
fi

# Personal Git Config

GITCONFIG_PERSONAL="$ZDOTDIR/.gitconfig.personal"

if [ -f "$GITCONFIG_PERSONAL" ];
then
    ln -sf "$ZDOTDIR/.gitconfig.personal" "$HOME/.gitconfig.personal"
else
    echo "\nRecommendation: Create a personal .gitconfig at $GITCONFIG_PERSONAL to contain any personal settings. Example contents:"
    echo ""
    echo "  [user]"
    echo "      name = <github username>"
    echo "      email = <github email>"
fi

# Autosuggestions

AUTOSUGGESTIONS="$ZDOTDIR/../zsh-autosuggestions/zsh-autosuggestions.zsh"

if [ -f "$AUTOSUGGESTIONS" ];
then
    export ZSH_AUTOSUGGEST_USE_ASYNC=true
    source "$AUTOSUGGESTIONS"
else
    echo "\nRecommendation: Install zsh-autosuggestions at $AUTOSUGGESTIONS"
fi

if [[ -x "$(command -v starship)" ]];
then
  export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"
  eval "$(starship init zsh)"
else
    echo "\nRecommendation: Install Starship"
fi
