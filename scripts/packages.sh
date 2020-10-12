#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install feh compton i3blocks flameshot xclip vim neofetch mpv lxappearance ranger htop pavucontrol powerline python3-pip
sudo pip3 install powerline-shell
sudo apt autoremove
