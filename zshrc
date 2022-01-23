# Aliases

alias vi='/usr/bin/vim'
alias repo='cd ~/repos'
alias git=hub
alias gs='git status'
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'
alias gbd='git branch -D'
alias gp='git pull'
alias dbm='bundle exec rake db:migrate'
alias dl='AWS_PROFILE=beam-tech-org-services aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 932532311803.dkr.ecr.us-east-1.amazonaws.com'
alias rubo='pronto run -c origin/develop'
alias rubofix="pronto run -c origin/develop | sed 's/^\(.*\.rb\)\:[0-9]* W:.*$/\1/g' | xargs rubocop -ax"
alias rubofixa="pronto run -c origin/develop | sed 's/^\(.*\.rb\)\:[0-9]* W:.*$/\1/g' | xargs rubocop -a"

eval "$(rbenv init -)"

source ~/.git-prompt.sh
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

setopt PROMPT_SUBST; 
PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
#export PS1="%10F%m%f:%11F%1~%f \$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Docker stuff
alias dls='docker ps --format "{{.Names}}"'

function dbash {
  docker exec -it $1  bash
}

function gcos {
  git branch | grep $1 | head -1 | xargs git checkout
}

function gpush {
  git push origin $1:feat/e2e-skip/$1
}

export PATH=/usr/local/opt/imagemagick@6/bin:/Users/dansajner/Library/Python/2.7/bin:$PATH 
export PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig:/usr/local/opt/opencv@2/lib/pkgconfig
export PATH="/usr/local/opt/opencv@2/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"


export BEAM_API_SOURCE_DIR=${HOME}/repos/beamtech/beam-api

source ~/.beam-cli/aliases.sh

bk-agent-exec() {
  kubectl exec -it -n buildkite $1 -c buildkite-agent /bin/bash
}

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
