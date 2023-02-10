# To make vms in vs code 

# First vagrant destroy

Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip: "192.168.10.100"
   
    app.vm.synced_folder "app", "/home/vagrant/app"
    app.vm.provision "shell", path: "provision.sh", privileged: false
  end

  config.vm.define "database" do |database|
    database.vm.box = "ubuntu/bionic64"
    database.vm.network "private_network", ip: "192.168.10.150"
    
    database.vm.synced_folder "environment", "/home/vagrant/environment"
  end
end

vagrant up        to get the vms up and running
vagrant status    to check the status of youur vvms

# Then ssh into the virtual machines

vagrant ssh app   and then vagrant ssh database   in two separate git bash terminals

# once you've ssh in your database terminal type in the key to install mongo

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

# Now verify that mongo is working

echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Now to update and Upgrade type in these commands

# First sudo apt-get update -y   then     sudo apt-get upgrade -y


# Now to install the database

sudo apt-get install mongodb-org=3.2.20 -y
# Then
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# After installation is complete   might need to update and upgrade again


sudo systemctl status mongod      the first time you run this it shows inactive (dead)
press q to continue
sudo systemctl start mongod
sudo systemctl status mongod        - status should be active(running)
press q to continue
sudo systemctl enable mongod

# Now we need to change the mongo file inside the etc folder

 sudo nano /etc/mongod.conf

# Once inside scroll down to # Network Interfaces and change the bindIP: to 0.0.0.0

# To check if it has been changed to 0.0.0.0

cat nano /etc/mongod.conf

# Now to restart mongodb

sudo systemctl restart mongod
sudo systemctl enable mongod

# Now we have to set up an environment variable to make a connection between the app to the database

# We need to go to our app VM and navigate into app

cd app           -        you should see app.js

## What to do if the app is still running ?

Create an ennvironment variable


# We need to tell our app where to go to get the connection and
# How we are going to connect this is why we need a persistant env variable
# our variable is called - DB_HOST=mongodb://192.168.10.150:27017/posts

now we need to use this command
export DB_HOST=mongodb://192.168.10.150      -  ip address from our data base:27017/posts

printenv DB_HOST      to check if it is set up properly

# We need to make the variable persistent so go into
 
sudo nano .bashrc

# Then paste
export DB_HOST=mongodb://192.168.10.150

# ctrl+x to exit and y enter to exit

printenv DB_HOST   - this should print out the variable if it exists


npm start


http://192.168.10.100:3000/posts

ctrl + z   stop the app

node seeds/seed.js


npm start