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