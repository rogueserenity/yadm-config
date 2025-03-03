# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="gianu"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.ohmyzsh-config

# Which plugins would you like to load?
plugins=(brew git keychain macos sudo vi-mode wd)

# Include homebrew zsh completions
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh
