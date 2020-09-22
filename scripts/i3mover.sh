#!/bin/bash

cd ~/.config/i3/
mkdir oldConfigs
mv * oldConfigs/

cd ~/dotfiles/
cp i3/* ~/.config/i3 
