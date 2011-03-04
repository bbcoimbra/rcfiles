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

### Java Classpath
if [[ -d "$HOME/lib/java" ]] ; then
	MYCLASSPATH="$HOME/lib/java"
	for jar in $HOME/lib/java/*.jar ; do
		MYCLASSPATH="$jar:$MYCLASSPATH"
	done
	MYCLASSPATH="$MYCLASSPATH:"
fi
CLASSPATH=".:..:$MYCLASSPATH/usr/lib64/java/jre/lib:/usr/lib64/java/lib"
export CLASSPATH

### set PATH so it includes user's private bin if it exists
[[ -d "$HOME/bin" ]] && PATH="$HOME/bin:${PATH}"

### Editors Preferences
export EDITOR=vim VISUAL=vim

### less options
# -R raw mode
# -S don't wrap lines
# -M long prompt (verbose)
export LESS="-M -S -R"
export LESSCHARSET="UTF-8"

### Some perl settings (local::lib)
#PERL_MM_USE_DEFAULT=1
#export PERL_MM_USE_DEFAULT
#eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

### Android Settings
#export ANDROID_SDK=$HOME/android/sdk
#export PATH="$ANDROID_SDK/tools:$PATH"

### Set colors for ls
eval $(dircolors)

### Load some files
[[ -s "$HOME/.bash.d/alias" ]] && source "$HOME/.bash.d/alias"
[[ -s "$HOME/.bash.d/colors" ]] && source "$HOME/.bash.d/colors"
[[ -s "$HOME/.bash.d/git-completion.bash" ]] && source "$HOME/.bash.d/git-completion.bash"

### Ruby Settings
# rvm Settings
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
# irb Settings
export IRBRC="$HOME/.irbrc"

### PS1 Settings
_RVM_PROMPT="${RED}\$(~/.rvm/bin/rvm-prompt u g)"
_GIT_PROMPT="${YELLOW}\$(__git_ps1 \"(%s)\")"
_LOCAL_PROMPT="${GREEN}\u${WHITE}@${BOLD}${GREEN}\h:${BOLD}${CYAN}\W${BOLD}${WHITE}"
PS1="${_RVM_PROMPT}${_GIT_PROMPT}${_LOCAL_PROMPT}${CLEAR}\\$ "

### Locale Settings
LANG=en_US.utf8
GDM_LANG=en_US.utf8
LC_COLLATE=C # for ascii sort
export LANG GDM_LANG LC_COLLATE

