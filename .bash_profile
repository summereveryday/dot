#!/usr/bin/env bash

#
# Profiles
#

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#
# Imports
#

if [ ! -f ~/.git_completion ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git_completion
fi

for file in ~/.{aliases,git_completion,colors,functions,prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
