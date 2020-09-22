#!/bin/bash

cd ~/.config
test -d oldConfigs/ || mkdir oldConfigs
cd ..
mv .bashrc -config/oldConfigs/

cd ~/dotfiles
cp .bashrc ~/