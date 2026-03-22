export XDG_CONFIG_HOME=~/.config

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="gianu"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.config/ohmyzsh

# Which plugins would you like to load?
plugins=(brew git keychain macos mise sudo vi-mode wd)

# Include homebrew zsh completions
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh

eval "$(~/.local/bin/mise activate zsh)"
