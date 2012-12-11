# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

[[ "$TERM" == "xterm" ]] && export TERM="xterm-color"

# include .bashrc if it exists
[[ -f ~/.bashrc ]] && source $HOME/.bashrc
