### Ruby Settings
# rvm Settings
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
# irb Settings
export IRBRC="$HOME/.irbrc"

_RVM_PROMPT="${RED}\$(~/.rvm/bin/rvm-prompt u g)"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Heroku path
PATH="/usr/local/heroku/bin:$PATH"
export PATH
