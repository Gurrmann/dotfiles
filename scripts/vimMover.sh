#!/bin/bash

cd ~/ 
test -d oldConfigs/ || mkdir oldConfigs
test -d .vim/ && mv .vim/ oldConfigs

cd ~/dotfiles 
cp -rf .vim/ ~/

