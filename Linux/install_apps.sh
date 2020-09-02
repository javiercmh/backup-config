#!/bin/bash

# common
apt install -y gdebi-core wget gnome-tweaks curl

# archive utilities
apt install rar unrar

# timeshift
add-apt-repository -y ppa:teejee2008/ppa
apt update
apt -y install timeshift

# atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
apt update
apt install -y atom 

# discord
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
yes | gdebi ~/discord.deb

# libreoffice
apt install -y libreoffice-gnome libreoffice

# spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list
apt update && apt install spotify-client
cp spotify_control /opt/
chmod +x /opt/spotify_control

# vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
rm packages.microsoft.gpg
apt install apt-transport-https
apt update
apt install code
cp ../vscode/*.json /home/javier/.config/Code/User/

## work

# dbeaver
wget -O ~/dbeaver.deb "https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb"
yes | gdebi ~/dbeaver.deb

# postgres
apt install -y postgresql

# node
apt install -y nodejs npm

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

## clean up
rm ~/*.deb
