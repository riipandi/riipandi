# ------------------------------------------------------------------------------
# General configuration
# ------------------------------------------------------------------------------
# Enable persistent history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000               # Max number of events stored in memory
SAVEHIST=100000               # Max number of events stored in the history file
setopt HIST_SAVE_NO_DUPS      # No duplicate entries
setopt INC_APPEND_HISTORY     # Save every command as it's entered
setopt HIST_IGNORE_ALL_DUPS   # Ignore duplicated commands in history
setopt SHARE_HISTORY          # Share history between all sessions
setopt APPEND_HISTORY         # Append to the history file, don't overwrite it

# Homebrew and preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then export EDITOR='nvim'; else export EDITOR='code'; fi
if [ -z "$HOMEBREW_PREFIX" ]; then eval "$(/opt/homebrew/bin/brew shellenv)"; fi

# General environment variables
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOMEBREW_PREFIX:$PATH"
export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_NO_INSTALL_FROM_API=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_DEVELOPER=1
export LANG=en_US.UTF-8
export GPG_TTY=$(tty)

# Defines which characters are considered part of a "word" for word-based editing commands (e.g., option+backspace).
# By removing the dash (-) from this list, option+backspace will stop at dashes, allowing you to delete only the part after the dash.
export WORDCHARS='*?_[]~=&;!#$%^(){}<>'

# Enable automatic completions
autoload -Uz compinit && compinit

# Load Extra configurations
source $HOME/.zsh/aliases
source $HOME/.zsh/envars
source $HOME/.zsh/functions

# Starship (fancy customizable shell prompt): brew install starship
# CMD: starship preset tokyo-night -o ~/.config/starship.toml
if [ -d "$(brew --prefix starship)" ]; then eval "$(starship init zsh)"; fi
