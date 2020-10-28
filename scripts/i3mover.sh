#!/bin/bash

cd ~/.config
test -d oldConfigs/ || mkdir oldConfigs
test -d i3/ || mkdir i3
cd i3/ 
mv * ../oldConfigs

cd ~/dotfiles/
cp i3/* ~/.config/i3 
