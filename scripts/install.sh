#!/bin/bash

# All processes will be handeled by separate scritps in the scripts folder
# simply comment out the scripts you do not wish to use
 

#Installation of the packages needed for all configs and some other useful ones
./packages.sh

#installing font awesome
./fontInstaller.sh

#Moving files where they belong
./i3mover.sh

./bashmover.sh

./polybarMover.sh

./vimMover.sh

#allowing case insensitive autocompletion in bash
echo set completion-ignore-case on | sudo tee -a /etc/inputrc

#installing ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#adding vim as default editor in git
git config --global core.editor "vim"

#touchpad settings
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        NaturalScrolling "on"
        Option "Tapping" "on"
EndSection

EOF
