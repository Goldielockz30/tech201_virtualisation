#!/bin/bash


# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Install web server nginx
sudo apt-get install nginx -y


# Start or Enable Nginx
sudo systemctl enable nginx -y


# This will install a particular version of python
sudo apt-get install python-software-properties 

# Overwrite nodejs to particular version
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -  

# Install Node.js 
sudo apt-get install nodejs -y

# Install Process Manager pm2
sudo npm install pm2 -g 
