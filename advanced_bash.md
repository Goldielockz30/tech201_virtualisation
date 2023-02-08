- Today we will be looking at the shell and how it interacts with the computer


- bare metal
- Hardware level
- Kernal - its the core of the operating system , how it works and how it does what we want it to do.

- security

user level - 
- shell (Command Line)

- GUI   - using a mouse to navigate


- Application

####

uname  - this shows you system information
```
MINGW64_NT-10.0-22621

```

a flag is what we put after a linux command to be more specific, we can use them in lots of different ways...

uname -a  or use the long version, uname --all
this will show all the system information

```
MINGW64_NT-10.0-22621 Goldielockz 3.3.6-341.x86_64 2022-09-05 20:28 UTC x86_64 Msys

```
```
uname -s  - system information

uname -r  - this shows you the release 

uname -m  - this is the hardware name

uname -i    - hardware platform

uname -o    - os

we can also combine these commands and they will show the information you specify

uname -si 

uname -srp    
```

####
```
clear to clear the screen


cd  = change directory

cd .ssh     = going into the .ssh

cd ..    = goes back out of the folder you are in

cd ../..    = goes up two levels


cd /      =  to get all the way out to the root directory

cd ~       = tilda - if your root is not your home directory, this will take you to your home directory

ls  = shows you the files that are inside where you currently are

ls -l  = l means long format, this will tell you the permissions on the files and folders that are within your folder
```

absolute path is from the root  of the machine

relative path is where it is from where you are now


# Linux/Mac
Absolute Path
/users/username/Documents/myfile.txt

# Windows

C:\users\username\Documents\myfilemtxt

# Web URLs
http://www.mysite.com/myfolder/subfolder/sub/sub2/page1.html

Relative path

from where we are

/Folder1/Folder2/file.txt


###
cd / 
cd home we can do that from the root
###

 vagrant ssh     =  to go into linux terminal


touch emptyfile.txt
ls

cd ~          = takes you back to home as a user for vagrant
nano

nano myfile

nano emptyfile.txt

mkdir       = make directorr

mkdir new_folder


mkdir "folder"



to copy a file

cp myfile copied_file.txt

cp myfile new_folder/copied_myfile.txt

cd new_folder

ls

cat copided_myfile.txt

cd new_folder


cd ..

cp -rf new_folder new_folder2     = recursive , everything within the folder 


home directory

nana new_file.txt        to create new file


rsync -r new_folder new_folder2


to move a file two folders along
cd new_folder
mv myfile.txt ../new_folder



to delete files

rm      = delete immediately without checking

rm new_file.txt

r means recursive
f is to force

to delete a folder and everything inside

rm -rf new_folder     = never do this    = to delete everything inside the folder 
ls

pwd     = this tells you where you currently are

rm --help

man ls      = this gives you a detailed look at all the different things you can do    put this into readme

man -k change     = this will bring up commands that have the change keyword
man -k log        = same

to search use grep , looking for the word test

grep test  

grep test *       = search in all files in this folder

grep test * -R     = It tells linux to search the whole folder for all instances and also search all the folders 
within this folder 


ctrl + c     =    if it hangs up

ls f*      = show me only files in folders with f
ls t*      =

ls file*    =

#####

# Linux permissions:

r (read)
w (write)
x (execute)
u - user
g - group
o - other

owner - group - others
			read    write    Execute

Setting:            0       0        0
Binary Value:
			  4        2        1

4 + 2  + 1 = 7
777 -> All permissions for all users/groups/other

755

7  = all perm for the owner
5  =  group and other can read and execute  (4 + 1)

541  = 

764  =

chmod    = to chaange permissions

ls -l testfile.txt        = given permissions


sudo chmod u+x testfile.txt

ls -l testfile.txt


sude chmod u-x testfile.txt

ls -l testfile.txt

sude chmod 777 testfile.txt     = give permissions to everyone






to get to task manager in linux tpye
top
this might lock up your terminal
control + c to get back in 
vagrant ssh


ps     = this will show whats happening in your current terminal

ps aux     = this shows you whats going on in the whole system




sleep 120 &

ps

kill 2201

ps

sleep 120 &

ps

kill -9 2210


sleep 5

sleep 5 &           =   it runs it in the background so it doesnt lock you out



sleep 120

fg

ps


ls 

sudo apt-get update

sudo apt install tree -y

#####

we added two folders in the same folder as our vm
app and environment
what we want to sync and where we want to put it

config.vm.synced_folder "app", "/home/vagrant/app"

then 


vagrant up

then open gitbash as admin

vagrant ssh        =    from git bash

once your in ubuntu

ls 

this shows app

cd app



from vs bash terminal

cd environment x2

cd spec-tests


gem install bundler

bundle

rake spec


#####
next we will install these things so that our environment is where we need it to be

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y     =  sudo systemctl start nginx 




check web browser to make sure its working "http://192.168.10.100/"

rake spec



sudo apt-get install python-software-properties        =   we need a particular version

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -        = once you install nodejs
 overwrite to this particular version


sudo apt-get install nodejs -y      =     this is the next step


nodejs -v      =  check the version

rake spec

we needed nodejs in order to get pm2

rake spec to check 


cd app 

cd app 
ls

npm install
npm -v

node app.js


192.168.10.100:3000

