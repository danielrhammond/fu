#==========================================================
# Aliases
#==========================================================

# General
alias ..='cd ..'
alias ...='cd ../..'
# Git
alias bco='git checkout -b'
alias c='git commit'
alias ca='git commit -av'
alias a='git add'
alias s='git status'
alias discard='git checkout --'
alias d='git diff|mate'
alias gd='git diff'
# fu
alias cdd='clear-derived-data'
alias gh='github'
alias utm='unmount-time-machine'

#==========================================================
# Environment Variables
#==========================================================

# Path Setup (include ~/dev/fu and postgres)
PATH=$PATH:~/Code/fu:/Library/PostgreSQL/9.0/bin

# Set Editor
export EDITOR='mate -w'

#==========================================================
# External Tools
#==========================================================

# Git Completion
source ~/Code/fu/git-completion.bash

# Rake Task Completion (Broken?)
complete -C ~/Code/fu/rake-completion.rb -o default rake

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
