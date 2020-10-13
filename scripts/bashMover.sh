#!/bin/bash

cd ~/.config
test -d oldConfigs/ || mkdir oldConfigs
cd ..
mv .bashrc .config/oldConfigs/
mv .bash_aliases .config/oldConfigs/

cd ~/dotfiles/bash
cp .bash* ~/