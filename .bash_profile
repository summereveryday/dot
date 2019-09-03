#!/usr/bin/env bash

# Add pyenv for using different python versions
export PATH="$PATH:$HOME/.pyenv"
eval "$(pyenv init -)"

[ -r .bashrc ] && [ -f .bashrc ] && [ -s .bashrc ] && source .bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
