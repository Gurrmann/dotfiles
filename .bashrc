#Colours

bold=(tput bold);
lightPurple=$(tput setaf 189);
green=$(tput setaf 156);
white=$(tput setaf 15);
reset=$(tput sgr0);

#PS1 config
PS1="\[${bold}\]\n"
PS1="\[${lightPurple}\]\u";
PS1+="\[${green}\] in \W -> ";
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";
export PS1;
