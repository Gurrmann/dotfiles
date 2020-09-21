#!/bin/bash

#package repos
sudo add-apt-repository ppa:daniruiz/flat-remix


#apt packages
sudo apt install feh compton cmake cmake-data libcairo3-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 python3-pip powerline i3blocks scrot xclip vim neofetch mpv lxappearance flat-remix ranger

#pip packages
sudo pip3 install powerline-shell

#Building polybar from source
wget https://github.com/polybar/polybar/releases/download/3.4.3/polybar-3.4.3.tar
#placeholder until i find better way to do this :(
xdg-open polybar-3.4.3.tar
echo press enter when done extracting!
read

cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install

#downloading and setting the wallpaper
wget https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4bd53bf4-934f-48d0-9bb0-c4446a3491a8/d8r99jv-99039cbc-d6ed-4eb4-9992-b461eaef0f58.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvNGJkNTNiZjQtOTM0Zi00OGQwLTliYjAtYzQ0NDZhMzQ5MWE4XC9kOHI5OWp2LTk5MDM5Y2JjLWQ2ZWQtNGViNC05OTkyLWI0NjFlYWVmMGY1OC5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.5uJ2ryN2_4P_4cGSahy9JgVC85rBMNA_lDwyy5sVQEQ

mv 'd8r99jv-99039cbc-d6ed-4eb4-9992-b461eaef0f58.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvNGJkNTNiZjQtOTM0Zi00OGQwLTliYjAtYzQ0NDZhMzQ5MWE4XC9kOHI5OWp2LTk5MDM5' wallpaper.png

cd ~/Pictures/
mkdir -p Wallpapers
cd ~/.dotfiles
mv wallpaper.png Pictures/Wallpapers/

#writing powerline-shell config to .bashrc
cat powerline-shell/writeToBashRc.txt >> ~/.bashrc
mkdir -p ~/.config/powerline-shell
cp powerline-shell/config.json ~/.config/powerline-shell/

#installing font awesome
wget https://github.com/FortAwesome/Font-Awesome/releases/download/5.14.0/fontawesome-free-5.14.0-web.zip
unzip fontawesome-free-5.14.0-web.zip

cd fontawesome-free-5.14.0-web/webfonts/
mkdir -p ~/.fonts
mv *.ttf ~/.fonts
cd ~/.dotfiles
rm -rf fontawesome-free-5.14.0-web
rm -rf fontawesome-free-5.14.0-web.zip


#moving the files where they belong
mkdir -p ~/.config/polybar
cp -rf polybarconfig ~/.config/polybar/
cd ~/.config/polybar/polybarconfig
mv *.sh ..
mv config ..
cd ..
rm -rf polybarconfig
cd ~/.dotfiles
mv polybar ~/
rm ~/.config/i3/config
cp i3/config ~/.config/i3/
cp i3/i3blocks.conf ~/.config/i3/
rm polybar-3.4.3.tar
echo log in and out for all changes to take place!
