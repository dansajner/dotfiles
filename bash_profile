# Aliases

alias vi='/usr/bin/vim'
alias repo='cd ~/repos'
alias gs='/usr/bin/git status'
alias gc='/usr/bin/git commit'
alias gco='/usr/bin/git checkout'
alias gb='/usr/bin/git branch'
alias gbd='/usr/bin/git branch -D'
alias gp='/usr/bin/git pull'
alias vs='vagrant status'

GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Single_line

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
