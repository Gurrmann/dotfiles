#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt install feh zsh compton i3-gaps i3blocks flameshot xclip vim neofetch mpv lxappearance ranger htop pavucontrol powerline python3-pip neovim fzf
sudo pip3 install powerline-shell
sudo apt autoremove
