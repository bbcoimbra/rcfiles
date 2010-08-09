HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1024
CLASSPATH="/usr/lib/java/jre/lib:/usr/lib/java/lib:~/lib/java:.:.."
export HISTCONTROL HISTSIZE CLASSPATH
LESS='-M -S -R'
export LESS
export IRBRC="$HOME/.irbrc"
export EDITOR=vim VISUAL=vim

if [ "$TERM" = "xterm" -o "$TERM" = "screen" ]; then
    export TERM="xterm-color"
fi

[[ -s "/etc/bash_completion" ]] && ! shopt -oq posix && source "/etc/bash_completion"

#eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)
#export PERL_MM_USE_DEFAULT=1

eval $(dircolors)
[[ -s "$HOME/.bash.d/alias" ]] && source "$HOME/.bash.d/alias"
[[ -s "$HOME/.bash.d/colors" ]] && source "$HOME/.bash.d/colors"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

_RVM_PROMPT="${RED}\$(~/.rvm/bin/rvm-prompt u g)"
_GIT_PROMPT=" ${YELLOW}\$(__git_ps1 \"(%s)\") "
_LOCAL_PROMPT="${GREEN}\u${WHITE}@${BOLD}${GREEN}\h:${BOLD}${CYAN}\w${BOLD}${WHITE}"
PS1="${_RVM_PROMPT}${_GIT_PROMPT}${_LOCAL_PROMPT}${CLEAR}\$ "
