#!/bin/bash

wget https://github.com/FortAwesome/Font-Awesome/releases/download/5.14.0/fontawesome-free-5.14.0-web.zip
unzip fontawesome-free-5.14.0-web.zip

cd fontawesome-free-5.14.0-web/webfonts/
mkdir -p ~/.fonts
mv *.ttf ~/.fonts
cd ~/Dotfiles/scripts
rm -rf fontawesome-free-5.14.0-web
rm -rf fontawesome-free-5.14.0-web.zip