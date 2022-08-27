#!/bin/bash

#navigate into our working directory
cd /home/ubuntu/express-app

#install npm packages for the application
npm install

#start our node app with pm2
sudo pm2 start index.js