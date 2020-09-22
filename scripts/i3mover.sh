#!/bin/bash

cd ~/.config
test -d oldConfigs/ || mkdir oldConfigs
cd i3/ 
mv * ../oldConfigs

cd ~/dotfiles/
cp i3/* ~/.config/i3 
