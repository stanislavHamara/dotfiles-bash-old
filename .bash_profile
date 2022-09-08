#!/bin/bash

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export AWS_PROFILE=dev-frontend
export AWS_DEFAULT_REGION=us-east-1

alias k=kubectl

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
  
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Load ~/.bashrc
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

