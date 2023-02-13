# Multiple VMs

- First, paste this code into your vagrant file to create two VMs

```
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
```
```vagrant destroy```
``` vagrant up ```  - to get the vms up and running
```vagrant status ```   to check the status of youur vvms

- Then ssh into the virtual machines

```vagrant ssh app```   and then ```vagrant ssh database```   in two separate git bash terminals

- Once you've ssh in your database terminal type in the key to install mongo

```sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927```

- Now verify that mongo is working

```echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list ```

- You shoule see this  
```deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse```

- Now to update and Upgrade type in these commands

- First ```sudo apt-get update -y ```  then     ```sudo apt-get upgrade -y```

- Now to install the database

- Then 
```sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20```

### After installation is complete you might need to update and upgrade again


```sudo systemctl start mongod```  
```sudo systemctl enable mongod```

```sudo systemctl status mongod```    - status should be active(running)
 press q to continue


- Now we need to change the mongo file inside the etc folder

 ```sudo nano /etc/mongod.conf```

- Once inside scroll down to # Network Interfaces and change the bindIP: to 0.0.0.0

- To check if it has been changed to 0.0.0.0

```cat nano /etc/mongod.conf```

- Now to restart mongodb

```sudo systemctl restart mongod```  
```sudo systemctl enable mongod```

- To check if our tools have been stored correctly through provisioning
```   nginx -v   ```

```  node -v  ```




- We need to go to our app VM and navigate into app

```cd app```  then   ``` ls  ```     -        you should see app.js

- What to do if the app is still running ?

```ps```   
```kill -9 PID```

- Create an ennvironment variable

- We need to tell our app where to go to get the connection and
- How we are going to connect this is why we need a persistent env variable
- our variable is called - DB_HOST=mongodb://192.168.10.150:27017/posts
- use the following    
```export DB_HOST=mongodb://192.168.10.150:27017/posts```

- We need to make the variable persistent so go into
 
```sudo nano .bashrc```

- Then paste
```export DB_HOST=mongodb://192.168.10.150:27017/posts```

```ctrl+x ``` to exit and ```y + enter``` to exit

```printenv DB_HOST ```   to check if it is set up properly  
you should see this ```mongodb://192.168.10.150:27017/posts```

- Check if anything is running
```ps```
- To seed the database
```node seeds/seed.js```  - You should see database seeded

- Launch the app
```node app.js```
- Check that the database content is now availible once you refresh the browser   
```http://192.168.10.100:3000/posts```

![](posts.png)

