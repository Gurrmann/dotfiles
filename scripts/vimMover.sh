#!/bin/bash

cd ~/ 
test -d oldConfigs/ || mkdir oldConfigs
test -d .vim/ && cp -rf .vim/ oldConfigs && rm -rf .vim/ || mkdir .vim

cd ~/dotfiles/
cd .vim/
cp vimrc ~/.vim/
cd ..
cp -rf nvim/ ~/.config
