#!/bin/bash

cd ~/ 
test -d oldConfigs/ || mkdir oldConfigs
test -d .vim/ && cp -rf .vim/ oldConfigs && rm -rf .vim/

cd ~/dotfiles/
cp -rf .vim/ ~/
cp -rf nvim/ ~/.config
