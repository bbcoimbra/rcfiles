### Ruby Settings
# irb Settings
export IRBRC="$HOME/.irbrc"

# rbenv Settings
eval "$(rbenv init -)"

### Heroku path
PATH="/usr/local/heroku/bin:$PATH"
export PATH

# rvm Settings
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
	source $HOME/.rvm/scripts/rvm
	_RVM_PROMPT="${RED}\$(~/.rvm/bin/rvm-prompt u g)"
	PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
fi
