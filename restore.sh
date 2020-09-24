#!/bin/bash


# Removing the new config files
cd

rm .config/i3/*
rm *bash*



# Moving the old config files back to where they belong
cd ~/.config/oldConfigs

mv *bash* ~/
mv config ~/.config/i3/
mv i3blocks.conf ~/.config/i3  
