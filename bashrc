# Aliases

alias gs='/usr/bin/git status'
alias gc='/usr/bin/git commit'
alias gco='/usr/bin/git checkout'
alias gb='/usr/bin/git branch'
alias gp='/usr/bin/git pull'
alias repo='cd ~/repos'
alias vi='/usr/bin/vim'

source ~/.git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi


