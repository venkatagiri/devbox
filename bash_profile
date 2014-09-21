
# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# Change the Prompt
PS1='[\u@\h \W]\$ '

# Generic Aliases
alias ls='ls --color'
alias l='ls -lrth'

# Git Aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit -m'
alias gac='git commit -am'
alias gb='git branch'

# Shortcuts for Projects
alias logs='heroku logs -s app'
alias w='cd ~/www/worldcal'
