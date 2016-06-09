#!/bin/bash
set -e

CUR_DIR="$(pwd)"
for file in vimrc ; do
  ln -F -s "$CUR_DIR/$file" ~/."$file"
done

mkdir -p ~/.vim-tmp

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
