#!/usr/bin/env bash

# Add pyenv for using different python versions
export PATH="$PATH:$HOME/.pyenv"
eval "$(pyenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
