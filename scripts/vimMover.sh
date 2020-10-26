#!/bin/bash

cd ~/ 
test -d oldConfigs/ || mkdir oldConfigs
test -d .vim/ && cp -rf .vim/ oldConfigs || mkdir .vim

cd ~/dotfiles/
cd .vim/
cp vimrc ~/.vim/
cd ..
cp -rf nvim/ ~/.config

#installing vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
