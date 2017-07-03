#!/bin/bash
set -e

CUR_DIR="$(pwd)"
for file in gemrc gitconfig gitignore irbrc tmux.conf muttrc ackrc ; do
	echo -ne "linking '$CUR_DIR/$file' -> '$HOME/.$file'\n"
  ln -f -F -s "$CUR_DIR/$file" ~/.$file
done

for dir in $(find . \( -not -regex '.*/\..*' \) -type d -depth 1) ; do
	echo -ne "cd $dir && ./config.sh (in subshell)\n"
  ( cd $dir && ./config.sh )
done
