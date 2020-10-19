#!/bin/bash

cd ~/.config
test -d oldConfigs/ || mkdir oldConfigs
cd polybar
mv config ../oldConfigs

cd ~/dotfiles/polybar
cp * ~/.config/polybar
