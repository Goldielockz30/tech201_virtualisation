#!/bin/bash


# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y


# Enable or Start Nginx
sudo systemctl enable nginx -y

sudo apt-get install python-software-properties 

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - 

# Install Node.js version 6.x
sudo apt-get install nodejs -y



# Install pm2

sudo npm install pm2 -g 


npm install

cd app

node app.js

