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
- It should be the same for everyone, everywhere. * A small difference is the programs and environments can break the applications.
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


- Vagrant - give instructions to virtual box and vm.

- VirtualBox - makes the machine, communicates with the vm, and with vagrant

- Virtual Machine - This is the environment we will create so we can work in a standardised environment.
  Hyper v can cause a problem (This needs to change in the turn windows features on or off, recommend turning hyper - v off, but keep on/checked virtual machine platform and windows hypervisor platform ) 

- Developer - This is the reason we are creating this environment, to standardise the environments for us and the developers.



# Ruby 

- Install ruby from online (highlighted version)

- In git bash type  
$ ruby --version

- This is what will be returned  
ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x64-mingw-ucrt]

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

Struggling to get into the correct place
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

Type the following

- vagrant init ubuntu/xenia164

then you will see the vagrant folder 



- initialise a vagrant file in this folder
- then tell vagrant what type of system we want to use, 
$ vagrant init ubuntu/xenial64
A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.

- The ruby code in the vagrant file will tell the vm what to do


to connect to the virtual machine
- vagrant ssh
- ls -a              this shows you hidden files and folders

we will use super user 
- sudo apt-get               this is used to get something to the internet
- update -y               to update everything on os      -y means yes to everything


install the web server using
sudo apt-get install nginx -y

now start it
sudo systemctl start nginx

up down to check through commands

status nginx

lets fix the address of our vm 

go into vagrant file add one line under config indent important

config.vm.network "private_network", ip: "192.168.10.100"
this will give our vm an ip address
if we type in the ip address we will get the welcome page for our web server instead of the 404 error page

exit           to get out 

vagrant reload       this will bring it back up again with the new settings