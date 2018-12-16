# Path to oh-my-zsh installation
export ZSH=/Users/sun1x/.oh-my-zsh

# Theme
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Plugins
# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(
  git
  node
  npm
  yarn
)

source $ZSH/oh-my-zsh.sh

# Variables

export LANG="en_US.UTF-8"

# Aliases
# Git aliases - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git#aliases
# Node aliases - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#node

alias dev="cd ~/dev"

alias ns="npm start"
alias ni="npm install --save"
alias nid="npm install --save-dev"

alias ys="yarn start"
alias ya="yarn add"
alias yad="yarn add -D"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
