#!/bin/bash

#Create our working directory if it doesn't exist
DIR='/home/ubuntu/express-app'
if [ -d "$DIR" ]; then
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory.."
    mkdir ${DIR}
    echo "${DIR} directory created"


echo "
----------------------
  NODE & NPM
----------------------
"

# add nodejs 16 ppa (personal package archive) from nodesource
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -

# install nodejs and npm
sudo apt-get install -y nodejs


echo "
----------------------
  PM2
----------------------
"

# install pm2 with npm
sudo npm install -g pm2

# set pm2 to start automatically on system startup
sudo pm2 startup systemd

