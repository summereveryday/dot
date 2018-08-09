#
# Profiles
#

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#
# Colors
#

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Solid

RED="\033[0;31m"
YEL="\033[0;33m"
GRN="\033[0;32m"
WHI="\033[1;37m"
CYN="\033[0;36m"
GRY="\033[0;37m"
BLU="\033[0;94m"

# Flash

_RED_="\033[4;31m"
_YEL_="\033[4;33m"
_GRN_="\033[4;32m"
_CYN_="\033[4;36m"
_GRY_="\033[4;37m"
_BLU_="\033[4;94m"

RES="\033[0m"

#
# Aliases
#

# $ cd
# $ touch .aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

#
# Git Auto Completion
#

# Reference: http://code-worrier.com/blog/autocomplete-git/
# $ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#
# Functions
#

# Reference: https://coderwall.com/p/pn8f0g/show-your-git-status-and-branch-in-color-at-the-command-prompt
function git_color {
  local git_status="$(git status 2> /dev/null)"
  # local current_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
  # local remote_branches="$(git ls-remote --heads origin 2> /dev/null)"

  if [[ $git_status == *"Changes not staged for commit"* ]]; then
    echo -e $RED
  elif [[ $git_status == *"Changes to be committed"* ]]; then
    echo -e $YEL
  elif [[ $git_status == *"Your branch is ahead of"* ]]; then
    echo -e $GRY
  elif [[ $git_status == *"nothing to commit, working tree clean"* ]]; then
    echo -e $GRN
  else
    echo -e $WHI
  fi
}

function git_branch {
  local git_directory="$(git rev-parse --show-toplevel 2> /dev/null)"
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $PWD == $git_directory ]]; then
    if [[ $git_status =~ $on_branch ]]; then
      local branch=${BASH_REMATCH[1]}
      echo " [$branch]"
    elif [[ $git_status =~ $on_commit ]]; then
      local commit=${BASH_REMATCH[1]}
      echo " [$commit]"
    fi
  fi
}

#
# PS
#

PS1=""
PS1+=" \[$BLU\]\w"
PS1+="\[\$(git_color)\]\$(git_branch)"
PS1+="\[$RES\]"
PS1+=" \[$WHI\]\$"
PS1+=" \[$RES\]"
export PS1
