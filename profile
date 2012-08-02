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
alias bco='git checkout -b'
alias c='git commit -v'
alias ca='git commit -av'
alias a='git add'
alias s='git status'
alias discard='git checkout --'
alias d='git diff|mate'
alias gd='git diff'
alias g='git'
alias upsub='git submodule init; git submodule update;'
alias gl='git log --graph --all --decorate --oneline -n 10'
alias gll='git log --graph --all --decorate --oneline'
# fu
alias cdd='clear-derived-data'
alias gh='github'
alias utm='unmount-time-machine'
alias pushie='~/Code/pushie/scripts/push.rb -d 83732695DE6B0850C69ADB37DB982B155551B2D159ECD6EE181718E8B16FF98E -m'

#==========================================================
# Environment Variables
#==========================================================

# Path Setup (include ~/dev/fu and postgres and mysql)
PATH=$PATH:~/Code/fu:/Library/PostgreSQL/9.0/bin:/usr/local/mysql/bin

# Set Editor
export EDITOR='mate -w'

#==========================================================
# External Tools
#==========================================================

# Git Completion
source ~/Code/fu/git-completion.bash

# Rake Task Completion (Broken?)
complete -C ~/Code/fu/rake-completion.rb -o default rake

# z

. ~/Code/fu/z/z.sh

#==========================================================
# Prompt Setup
#==========================================================
c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_sgr0=`tput sgr0`

parse_git_branch () {
  if git rev-parse --git-dir >/dev/null 2>&1
  then
          gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  else
          return 0
  fi
  echo -e " $gitver"
}

branch_color () {
        if git rev-parse --git-dir >/dev/null 2>&1
        then
                color=""
                if git diff --quiet 2>/dev/null >&2 
                then
                        color="${c_green}"
                else
                        color=${c_red}
                fi
        else
                return 0
        fi
        echo -ne $color
}

PS1='\[\033]0;\u@\h\007\]\u@\w\[${c_sgr0}\]\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\] : '

#==========================================================
# Prompt Setup
#==========================================================
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
