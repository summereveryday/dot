#
# Profiles
#

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#
# Imports
#

for file in ~/.{aliases,colors,prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Reference: http://code-worrier.com/blog/autocomplete-git/
# $ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
