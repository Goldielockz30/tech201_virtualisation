# DevOpps and Develop Environments

## DevOps

DevOps can mean different things to different people, its becomming a better understood concept.

# Development and Operations - breaking Silos -
- working together
- shared responsibilities
- deploy infrastructure as code
- automation

# Google data centres
- The engine of the internet, there are rows uopn rows of machines
- they managed zero lost time incedents
- they offer a level of secuity unmatched
- their IS team second to none - members have written the books 
- protecting user information is their priority
- custom server racks to optimise the computers
- pre authorise accessed list for different levels of security at different points of entry
- laser beam intruder detection
- at the time of the video they had changed cooling technologies at least 5 times, cooling system running 24/7 using water in coils 
- the face on innovation and challenging the ways they do things
- we used to use on prem services but now the cloud has enabled us to use data centres like google, with that we can do things that we may not have been able to do on premise

# Four areas we can look at as DevOps engineers


### Ease of use
- Other teams are going to use the tools we create. They wont use them if they are not user friendly
- we need to make sure that everything we make and as user friendly as possible
- if devs do not use our tools their will be headaches/ delays in development down the line


### Flexibility
- It can be easy to get locked in to using a particular product, tool or software. And it then becomes hard for the company to keep up with industry changes.
- Everything the company uses should be easily changed or updated as the business needs change.

### Robustness
- We need as close to 100% uptime as possible for our company's services.
- We are responsible for achieving this as DevOps Engineers


### Cost
- Cost is often overlooked. Wneed to make sure the company is being as efficent as possible in its tech dealings.
- For example how powerful a machine do we need to conduct a task? Do we need certain servers running? etc.


# Infrastructure and Architecture
- We will learn to build monoliths first
- Monolith - all on the same physical machine - considered bad practice
- 2 tier                            - 2 tier

- We will learn to make the monolith into microservices
- Mocroservices - 
- Containers allow us to create microservice architectures


### Tooling

# Risk register
- this shows the description eg. production server fails, the chance of occurance eg. medium, potential damage eg. loss of revenue, and the risk for your business if these things were to happen eg. high


# Dev Environments

- An area where developers can write their code, run the code, test the code
- Its a space on some machine somewhere which has all programs installed which enables them to write, test and run the code. 
- Our job is to create these environments for the dev team
- DevOps engineere create the Dev environment 
- We can standardise things, ensuring everyone can collaborate well, making sure that everyone is on the exact same system which makes everyones job easier.


# What makes a good Dev Environment?

- User friendly, fast and robust.
- It should be easy to update. - GIT can really help us with this - version control
- It should match the production environment as closely as possible
- It should be the same for everyone, everywhere. * A small difference in the programs and environments can break the applications.
- It should only support one application. * App1 requires version 1.1 - App2 needs version 1.4, this wont work, its best practice to use the same version, * App1 needs a proram and that program conflicts with another program that App2 needs.



# 

- Virtualisation ensures Standardisation
First we need

Local Host - Win/mac/linux

Vagrant installed
Virtual box
Ruby
Bash
Git
SSH


- Vagrant - gives instructions to virtual box and vm.

- VirtualBox - makes the machine, communicates with the vm, and with vagrant

- Virtual Machine - This is the environment we will create so we can work in a standardised environment.
  Hyper v can cause a problem (This needs to change in the turn windows features on or off, recommend turning hyper - v off, but keep on/checked virtual machine platform and windows hypervisor platform ) 

- Developer - This is the reason we are creating this environment, to standardise the environments for us and the developers.



# Ruby 

- Install ruby from online (highlighted version)

- In git bash type  
 ruby --version

- This is what will be returned  
```
ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x64-mingw-ucrt]
```
# VirtualBox

- Download virtual box using this site
https://www.virtualbox.org/wiki/Downloads

- We won't actually use VirtualBox directly. Vagrant will handle everything


# Vagrant

- Install vagrant 
when its installed check the version in git bash terminal
$ vagrant --version
- This is what you should see
Vagrant 2.3.4

Struggling to get into the correct place?
- In git bash type pwd to see current path
if you are in the wrong place type 
- cd ..                 to get out of the wrong place , next
- cd sample_repo
this is where you want to be, C:\Users\ahimb\sample_repo
- cd tech201_virtualisation
- ls
- git status

Permissions
- Find the location of the folder, go to properties, security, permissions.

Next 
- Type the following in git bash

vagrant init ubuntu/xenia164

- Then you will see the vagrant folder locally in the tech201_virtualisation folder and in vs code


Next
- Vagrant init - this will initialise a vagrant file in this folder
- ubuntu/xenial64 - then this tells vagrant what type of system we want to use, shown below

So type the following in git bash

vagrant init ubuntu/xenial64

- This is what you will see 
```
A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.
```
- The ruby code in the vagrant file will tell the vm what to do


Next to connect to the virtual machine type   

  vagrant ssh

- from this you should get back 
```
$ vagrant ssh
Welcome to Ubuntu 16.04.7 LTS (GNU/Linux 4.4.0-210-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

UA Infra: Extended Security Maintenance (ESM) is not enabled.

0 updates can be applied immediately.

45 additional security updates can be applied with UA Infra: ESM
Learn more about enabling UA Infra: ESM service for Ubuntu 16.04 at
https://ubuntu.com/16-04

New release '18.04.6 LTS' available.
Run 'do-release-upgrade' to upgrade to it.
```


 ls -a        
This will shows you hidden files and folders
```
.  ..  .bash_logout  .bashrc  .cache  .profile  .ssh

```
- We will use super user   
sudo apt-get
- This is used to get something to the internet and it looks like this
```
apt 1.2.35 (amd64)
Usage: apt-get [options] command
       apt-get [options] install|remove pkg1 [pkg2 ...]
       apt-get [options] source pkg1 [pkg2 ...]

apt-get is a command line interface for retrieval of packages
and information about them from authenticated sources and
for installation, upgrade and removal of packages together
with their dependencies.

Most used commands:
  update - Retrieve new lists of packages
  upgrade - Perform an upgrade
  install - Install new packages (pkg is libc6 not libc6.deb)
  remove - Remove packages
  purge - Remove packages and config files
  autoremove - Remove automatically all unused packages
  dist-upgrade - Distribution upgrade, see apt-get(8)
  dselect-upgrade - Follow dselect selections
  build-dep - Configure build-dependencies for source packages
  clean - Erase downloaded archive files
  autoclean - Erase old downloaded archive files
  check - Verify that there are no broken dependencies
  source - Download source archives
  download - Download the binary package into the current directory
  changelog - Download and display the changelog for the given package

See apt-get(8) for more information about the available commands.
Configuration options and syntax is detailed in apt.conf(5).
Information about how to configure sources can be found in sources.list(5).
Package and version choices can be expressed via apt_preferences(5).
Security details are available in apt-secure(8).
                                        This APT has Super Cow Powers.

```

update -y
- To update everything on the os  
-y means yes to everything


Next install the web server using  
sudo apt-get install nginx -y
This is what you should see next
```
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  fontconfig-config fonts-dejavu-core libfontconfig1 libgd3 libjbig0
  libjpeg-turbo8 libjpeg8 libtiff5 libvpx3 libxpm4 nginx-common nginx-core
Suggested packages:
  libgd-tools fcgiwrap nginx-doc ssl-cert
The following NEW packages will be installed:
  fontconfig-config fonts-dejavu-core libfontconfig1 libgd3 libjbig0
  libjpeg-turbo8 libjpeg8 libtiff5 libvpx3 libxpm4 nginx nginx-common
  nginx-core
0 upgraded, 13 newly installed, 0 to remove and 0 not upgraded.
Need to get 2,860 kB of archives.
After this operation, 9,315 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libjpeg-turbo8 amd64 1.4.2-0ubuntu3.4 [111 kB]
Get:2 http://archive.ubuntu.com/ubuntu xenial/main amd64 libjbig0 amd64 2.1-3.1 [26.6 kB]
Get:3 http://archive.ubuntu.com/ubuntu xenial/main amd64 fonts-dejavu-core all 2.35-1 [1,039 kB]
Get:4 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 fontconfig-config all 2.11.94-0ubuntu1.1 [49.9 kB]
Get:5 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libfontconfig1 amd64 2.11.94-0ubuntu1.1 [131 kB]
Get:6 http://archive.ubuntu.com/ubuntu xenial/main amd64 libjpeg8 amd64 8c-2ubuntu8 [2,194 B]
Get:7 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libtiff5 amd64 4.0.6-1ubuntu0.8 [149 kB]
Get:8 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libvpx3 amd64 1.5.0-2ubuntu1.1 [732 kB]
Get:9 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libxpm4 amd64 1:3.5.11-1ubuntu0.16.04.1 [33.8 kB]
Get:10 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libgd3 amd64 2.1.1-4ubuntu0.16.04.12 [126 kB]
Get:11 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 nginx-common all 1.10.3-0ubuntu0.16.04.5 [26.9 kB]
Get:12 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 nginx-core amd64 1.10.3-0ubuntu0.16.04.5 [429 kB]
Get:13 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 nginx all 1.10.3-0ubuntu0.16.04.5 [3,494 B]
Fetched 2,860 kB in 0s (5,956 kB/s)
Preconfiguring packages ...
Selecting previously unselected package libjpeg-turbo8:amd64.
(Reading database ... 54424 files and directories currently installed.)
Preparing to unpack .../libjpeg-turbo8_1.4.2-0ubuntu3.4_amd64.deb ...
Unpacking libjpeg-turbo8:amd64 (1.4.2-0ubuntu3.4) ...
Selecting previously unselected package libjbig0:amd64.
Preparing to unpack .../libjbig0_2.1-3.1_amd64.deb ...
Unpacking libjbig0:amd64 (2.1-3.1) ...
Selecting previously unselected package fonts-dejavu-core.
Preparing to unpack .../fonts-dejavu-core_2.35-1_all.deb ...
Unpacking fonts-dejavu-core (2.35-1) ...
Selecting previously unselected package fontconfig-config.
Preparing to unpack .../fontconfig-config_2.11.94-0ubuntu1.1_all.deb ...
Unpacking fontconfig-config (2.11.94-0ubuntu1.1) ...
Selecting previously unselected package libfontconfig1:amd64.
Preparing to unpack .../libfontconfig1_2.11.94-0ubuntu1.1_amd64.deb ...
Unpacking libfontconfig1:amd64 (2.11.94-0ubuntu1.1) ...
Selecting previously unselected package libjpeg8:amd64.
Preparing to unpack .../libjpeg8_8c-2ubuntu8_amd64.deb ...
Unpacking libjpeg8:amd64 (8c-2ubuntu8) ...
Selecting previously unselected package libtiff5:amd64.
Preparing to unpack .../libtiff5_4.0.6-1ubuntu0.8_amd64.deb ...
Unpacking libtiff5:amd64 (4.0.6-1ubuntu0.8) ...
Selecting previously unselected package libvpx3:amd64.
Preparing to unpack .../libvpx3_1.5.0-2ubuntu1.1_amd64.deb ...
Unpacking libvpx3:amd64 (1.5.0-2ubuntu1.1) ...
Selecting previously unselected package libxpm4:amd64.
Preparing to unpack .../libxpm4_1%3a3.5.11-1ubuntu0.16.04.1_amd64.deb ...
Unpacking libxpm4:amd64 (1:3.5.11-1ubuntu0.16.04.1) ...
Selecting previously unselected package libgd3:amd64.
Preparing to unpack .../libgd3_2.1.1-4ubuntu0.16.04.12_amd64.deb ...
Unpacking libgd3:amd64 (2.1.1-4ubuntu0.16.04.12) ...
Selecting previously unselected package nginx-common.
Preparing to unpack .../nginx-common_1.10.3-0ubuntu0.16.04.5_all.deb ...
Unpacking nginx-common (1.10.3-0ubuntu0.16.04.5) ...
Selecting previously unselected package nginx-core.
Preparing to unpack .../nginx-core_1.10.3-0ubuntu0.16.04.5_amd64.deb ...
Unpacking nginx-core (1.10.3-0ubuntu0.16.04.5) ...
Selecting previously unselected package nginx.
Preparing to unpack .../nginx_1.10.3-0ubuntu0.16.04.5_all.deb ...
Unpacking nginx (1.10.3-0ubuntu0.16.04.5) ...
Processing triggers for libc-bin (2.23-0ubuntu11.3) ...
Processing triggers for man-db (2.7.5-1) ...
Processing triggers for ureadahead (0.100.0-19.1) ...
Processing triggers for systemd (229-4ubuntu21.31) ...
Processing triggers for ufw (0.35-0ubuntu2) ...
Setting up libjpeg-turbo8:amd64 (1.4.2-0ubuntu3.4) ...
Setting up libjbig0:amd64 (2.1-3.1) ...
Setting up fonts-dejavu-core (2.35-1) ...
Setting up fontconfig-config (2.11.94-0ubuntu1.1) ...
Setting up libfontconfig1:amd64 (2.11.94-0ubuntu1.1) ...
Setting up libjpeg8:amd64 (8c-2ubuntu8) ...
Setting up libtiff5:amd64 (4.0.6-1ubuntu0.8) ...
Setting up libvpx3:amd64 (1.5.0-2ubuntu1.1) ...
Setting up libxpm4:amd64 (1:3.5.11-1ubuntu0.16.04.1) ...
Setting up libgd3:amd64 (2.1.1-4ubuntu0.16.04.12) ...
Setting up nginx-common (1.10.3-0ubuntu0.16.04.5) ...
Setting up nginx-core (1.10.3-0ubuntu0.16.04.5) ...
Setting up nginx (1.10.3-0ubuntu0.16.04.5) ...
Processing triggers for libc-bin (2.23-0ubuntu11.3) ...
Processing triggers for ureadahead (0.100.0-19.1) ...
Processing triggers for systemd (229-4ubuntu21.31) ...
Processing triggers for ufw (0.35-0ubuntu2) ...

```

- Now to start the web server
sudo systemctl start nginx

- You can press up and down buttone on key pad to check through commands  
next tpype ..   
status nginx

```
The program 'status' is currently not installed. To run 'status' please ask your administrator to install the package 'upstart'

```

- Next lets fix the address of our vm 

- Go into the vagrant file and add on the line under the line that starts with "config" the indentation important

config.vm.network "private_network", ip: "192.168.10.100"  


- This will give our vm an ip address
- Now if we type in the ip address we will get the welcome page for our web server instead of the 404 error page
- Now in git bash terminal we need to type exit to get out

exit        
- and then to reload, this will bring it back up again with the new settings  

vagrant reload       