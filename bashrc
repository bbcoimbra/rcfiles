### load system profile if exists
[[ -s /etc/profile ]] && source /etc/profile

### terminal settings
# enable colors
if [ "$TERM" = "xterm" ]; then
	export TERM="xterm-color"
fi

# remove binding for stop terminal (default ^S)
stty stop ''

### History control
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1024
export HISTCONTROL HISTSIZE

### set PATH so it includes user's private bin if it exists
[[ -d "$HOME/bin" ]] && PATH="$HOME/bin:${PATH}"

### Editors Preferences
export EDITOR=vim VISUAL=vim

### Set colors for ls
eval $(dircolors)

### Load .bash.d/*.bash files
for file in $HOME/.bash.d/*.bash ; do
	source file
done

### PS1 Settings
_GIT_PROMPT="${YELLOW}\$(__git_ps1 \"(%s)\")"
_LOCAL_PROMPT="${GREEN}\u${WHITE}@${BOLD}${GREEN}\h:${BOLD}${CYAN}\W${BOLD}${WHITE}"
PS1="${_RVM_PROMPT}${_GIT_PROMPT}${_LOCAL_PROMPT}${CLEAR}\\$ "
