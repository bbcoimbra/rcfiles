### Ruby Settings
# irb Settings
export IRBRC="$HOME/.irbrc"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Heroku path
PATH="/usr/local/heroku/bin:$PATH"
export PATH

# rvm Settings
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
	source $HOME/.rvm/scripts/rvm
	_RVM_PROMPT="${RED}\$(~/.rvm/bin/rvm-prompt u g)"
fi
