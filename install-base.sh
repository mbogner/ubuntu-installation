#!/bin/bash

# java
sudo add-apt-repository -y ppa:webupd8team/java

# debreate
sudo add-apt-repository -y ppa:antumdeluge/debreate

# telegram
sudo add-apt-repository -y ppa:atareao/telegram

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# postgres
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# flatpak
sudo add-apt-repository -y ppa:alexlarsson/flatpak

# wine
wget --quiet -O - https://dl.winehq.org/wine-builds/Release.key | sudo apt-key add -
sudo apt-add-repository -y https://dl.winehq.org/wine-builds/ubuntu/

# nodejs - runs apt-get update
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt -y dist-upgrade && \
sudo apt install -y \
	oracle-java9-installer oracle-java9-unlimited-jce-policy \
	debreate \
	telegram \
	nodejs \
	docker apt-transport-https ca-certificates curl software-properties-common \
	postgresql-server-dev-all pgadmin3 \
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
