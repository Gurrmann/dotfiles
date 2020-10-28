#!/bin/bash

cd ~/.config
test -d oldConfigs/ || mkdir oldConfigs
test -d polybar/ || mkdir polybar
cd polybar
mv config ../oldConfigs

cd ~/dotfiles/polybar
cp * ~/.config/polybar
