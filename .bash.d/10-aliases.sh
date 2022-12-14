#!/bin/bash

get_operating_system() {
  case "$OSTYPE" in
    darwin*)
      echo 'macos' ;;
    msys*)
      echo 'windows' ;;
  esac
}

# Default aliases
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gg='git graph'
alias gf='git fetch --prune'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias awslogin='$(aws ecr get-login --no-include-email)'
alias grafana='kubectl --namespace monitoring port-forward svc/grafana 9000'
alias cdr="cd $(git rev-parse --show-toplevel)"

# Set up autocomplete for Git aliases
if declare -F __git_complete >/dev/null; then
  __git_complete gs _git_status
  __git_complete gd _git_diff
  __git_complete gds _git_diff
  __git_complete gg _git_log
  __git_complete dotfiles _git
fi

# OS-specific aliases
os="$(get_operating_system)"
[[ -f "$HOME/.bash_aliases.${os}" ]] && source "$HOME/.bash_aliases.${os}"
unset os
