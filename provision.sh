#!/bin/bash


# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y


# Enable or Start Nginx
sudo systemctl enable nginx -y

# This will install a particular version
sudo apt-get install python-software-properties 

# Overwrite nodejs to particular version
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -  

# Install Node.js version 6.x
sudo apt-get install nodejs -y

# Install pm2
sudo npm install pm2 -g 

# Install pm2
npm install

# cd into app folder
cd app

# Run the node app
node app.js

