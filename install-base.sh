#!/bin/bash

sudo apt update && sudo apt install -y curl

# debreate for creating deb packages
sudo add-apt-repository -y ppa:antumdeluge/debreate

# telegram
sudo add-apt-repository -y ppa:atareao/telegram

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# postgres
echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# flatpak
sudo add-apt-repository -y ppa:alexlarsson/flatpak

# wine
wget --quiet -O - https://dl.winehq.org/wine-builds/Release.key | sudo apt-key add -
sudo apt-add-repository -y https://dl.winehq.org/wine-builds/ubuntu/

# nodejs - runs apt-get update
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt -y dist-upgrade && \
sudo apt install -y \
	debreate \
	telegram \
	nodejs \
	docker-ce apt-transport-https ca-certificates curl software-properties-common \
	postgresql-server-dev-all pgadmin3 \
	mysql-client \
	build-essential git git-svn subversion unzip \
	pwgen vim \
	wireshark htop iotop nmap \
	gimp \
	chromium-browser firefox thunderbird \
	flatpak \
	winehq-devel \
	keepassx \
	&& \
sudo apt-get autoremove -y --purge

# docker group needed
sudo usermod -aG docker manuel

# install compose
# https://docs.docker.com/compose/install/#install-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk update
sdk upgrade
sdk install java
sdk install gradle
sdk install maven
sdk install visualvm

###############################################################################
echo "done"
