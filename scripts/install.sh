#!/bin/bash

# All processes will be handeled by separate scritps in the scripts folder
# simply comment out the scripts you do not wish to use
 

#Installation of the packages needed for all configs and some other useful ones
./packages.sh

#downloading and setting the wallpaper
./setWallpaper.sh

#installing font awesome
./fontInstaller.sh

#allowing case insensitive autocompletion in bash
echo set completion-ignore-case on | sudo tee -a /etc/inputrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git config --global core.editor "vim"

#Moving files where they belong
./i3mover.sh

./bashmover.sh

./polybarMover.sh

