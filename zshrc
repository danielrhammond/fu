# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gem github)

source $ZSH/oh-my-zsh.sh

#==========================================================
# Aliases
#==========================================================

# General
alias ..='cd ..'
alias ...='cd ../..'
# Rails
alias r='rails'
alias mater='mate Gemfile app/ config/ doc/ lib/ public/ script/ test/ vendor/'
# Xcode
alias kx='killall Xcode;killall Xcode45-DP1'
# Git
alias co='git checkout'
alias bco='git checkout -b'
alias c='git commit -v'
alias ca='git commit -av'
alias a='git add'
alias s='git status'
alias discard='git checkout --'
alias d='git diff|mate'
alias gd='git diff'
alias g='git'
alias upsub='git submodule update --init --recursive'
alias gl='git log --graph --all --decorate --oneline -n 10'
alias gll='git log --graph --all --decorate --oneline'
# fu
alias cdd='clear-derived-data'
# alias gh='github'

#==========================================================
# Environment Variables
#==========================================================

# Path Setup (include ~/dev/fu and postgres and mysql)
export PATH=$PATH:~/code/personal/fu

# RVM
source /Users/drh/.rvm/scripts/rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
#. rvm use 1.9.2

# Set Editor
export EDITOR='mate -w'

# z
. ~/Code/personal/fu/z/z.sh