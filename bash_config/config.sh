#!/bin/bash
set -e

CUR_DIR=$(pwd)
for file in bash_profile bashrc bash.d; do
	echo -ne "linking $CUR_DIR/$file -> ~/.$file\n"
  ln -F -s $CUR_DIR/$file ~/.$file
done