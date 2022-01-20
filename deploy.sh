#!/bin/bash

sudo apt update -y
sudo apt upgrade
sudo apt install -y curl jq
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
sudo apt install -y npm
curl https://get.docker.com | sudo bash
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo chmod 666 /var/run/docker.sock
node --version
npm -v
docker --version
docker-compose -v

# chmod u+x deploy.sh
#./deploy.sh
