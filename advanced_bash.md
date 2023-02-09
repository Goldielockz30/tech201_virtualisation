Today we will be looking at the shell and how it interacts with the computer

There are different levels
- bare metal
- Hardware level
- Kernal - its the core of the operating system , how it works and how it does what we want it to do.

- security

user level - this is where we will be
- shell (Command Line)

- GUI   - eg. using a mouse to navigate

- Application

####
 # Advanced Bash
```uname```  - this shows you system information
```
MINGW64_NT-10.0-22621

```

- A flag is what we put after a linux command to be more specific, we can use them in lots of different ways...

```uname -a ``` or use the long version,``` uname --all```
this will show all the system information

```
MINGW64_NT-10.0-22621 Goldielockz 3.3.6-341.x86_64 2022-09-05 20:28 UTC x86_64 Msys

```

```uname -s ``` - system information

``` uname -r ``` - this shows you the release 

```uname -m ``` - this is the hardware name

```uname -i ```   - hardware platform

```uname -o ```   - os

we can also combine these commands and they will show the information you specify

```uname -si ```

```uname -srp    ```


####
# Navigation 
``` clear ``` - use this to to clear the screen

cd  means change directory

```cd .ssh``` -going into the .ssh

``` cd .. ```  - goes back out of the folder you are in

``` cd ../.. ```  - goes up two levels


``` cd / ```  - to get all the way out to the root directory

``` cd ~ ```  - tilda - if your root is not your home directory, this will take you to your home directory

``` ls ``` - shows you the files that are inside where you currently are

``` ls -l ``` - l means long format, this will tell you the permissions on the files and folders that are within your folder


### Absolute Path - is from the root  of the machine
- Linux/Mac

/users/username/Documents/myfile.txt

- Windows

C:\users\username\Documents\myfilemtxt

- Web URLs
http://www.mysite.com/myfolder/subfolder/sub/sub2/page1.html

### Relative path (from where we are now)  

/Folder1/Folder2/file.txt

# Creating files and Folders
``` cd ~ ```cd  to home we can do that from the root aswell

```cd sample_repo```    

```cd tech201_virtualisation ```

 ``` vagrant ssh ```  to go into linux terminal

### To create a file
``` touch emptyfile.txt ```

``` ls  ```

``` cd ~  ``` takes you back to home as a user for vagrant 

``` touch ```  - this creates an empty file 

``` nano emptyfile.txt  ``` to edit this file ,  ctrl + X to exit Y and enter to save

``` cat ```  - this shows contents of the file

### To create a new folder

``` mkdir ```      make directorr

``` mkdir new_folder ```


``` mkdir "folder" ``` - To name the folder


### To copy a file

``` cp myfile.txt copied_file.txt ```

``` cp myfile.txt new_folder/copied_myfile.txt ```

``` cd new_folder ```

``` ls ```

``` cat copied_myfile.txt ```

``` cd new_folder ```


``` cd .. ```

``` cp -rf new_folder new_folder2  ``` r = recursive , everything within the folder 


home directory

``` nano new_file.txt  ```      to create new file


``` rsync -r new_folder new_folder2 ```


### To move a file two folders along
``` cd new_folder ```
``` mv myfile.txt ../new_folder ```



### To delete files

``` rm  ``` this will delete immediately without checking

``` rm new_file.txt ```

r means recursive   
f is to force

### To delete a folder and everything inside

``` rm -rf new_folder ```  to delete everything inside the folder    
``` rm -rf ``` never do this  
```ls```

``` pwd ``` this tells you where you currently are

``` rm --help ```

``` man ls  ``` this gives you a detailed look at all the different things you can do    put this into readme

``` man -k change ``` this will bring up commands that have the change keyword
``` man -k log  ```this will do the same for log

### To search in linux use grep , 

``` grep test  ``` - eg. looking for the word test

``` grep test * ```  - search in all files in this folder

``` grep test * -R ```  - It tells linux to search the whole folder for all instances and also search all the folders within this folder 


``` ctrl + c ```   - If it hangs up or locks you out because of the previous command

``` ls f* ``` show me only files in folders with f
``` ls t* ```     show me only files in folders with t

``` ls file*  ```  show me only files in folders with file



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

755 = owner has all permissions, group and others can read and execute

* 7  = all permissions for the owner
* 5  =  group and other can read and execute  (4 + 1)

541  = owner can read and execute, group can read, others can execute

764  = owner has all permissions, group can read and write, others can read.

``` chmod ``` to chaange permissions

``` ls -l testfile.txt  ``` given permissions


``` sudo chmod u+x testfile.txt ```

``` ls -l testfile.txt ```


``` sudo chmod u-x testfile.txt ```

``` ls -l testfile.txt ```

``` sude chmod 777 testfile.txt  ``` give permissions to everyone


to get to task manager in linux tpye
``` top ```  
this might lock up your terminal
``` control + c  ```to get back in 


``` vagrant ssh ```
``` ps  ``` this will show whats happening in your current terminal

``` ps aux  ``` this shows you whats going on in the whole system

``` sleep 120 & ```

``` ps```

```kill 2201 ```

``` ps```

``` sleep 120 &```

``` ps ```

``` kill -9 2210 ```


``` sleep 5 ```

``` sleep 5 &     ```   it runs it in the background so it doesnt lock you out

```sleep 120```

```fg```

```ps```

```ls ```

```sudo apt-get update```

```sudo apt install tree -y```

#####

we added two folders in the same folder as our vm   
the folders are app and environment   
what we want to sync and where we want to put it

```config.vm.synced_folder "app", "/home/vagrant/app"``` add this into your vagrant file directly under the last config line

then 


```vagrant up```

then open gitbash as admin

```vagrant ssh ```          from git bash terminal

now your in ubuntu

``` ls ```

this shows
 app
    

from vs bash terminal

``` cd environment```  x2 if it is nested

``` cd spec-tests```


```gem install bundler```

```bundle```

```rake spec```


#####
next we will install these things so that our environment is where we need it to be

```sudo apt-get update -y```

```sudo apt-get upgrade -y```

```sudo apt-get install nginx -y ```      sudo systemctl start nginx 




check web browser to make sure its working "http://192.168.10.100/" `

```rake spec```



```sudo apt-get install python-software-properties   ```       we need a particular version

```curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - ```        once you ```install nodejs```
 overwrite to this particular version


```sudo apt-get install nodejs -y  ```        this is the next step


```nodejs -v   ```    check the version

```rake spec```

we needed nodejs in order to get pm2

```rake spec ``` to check 


```cd app ```

```cd app ``` again if it is nested
```ls```

```npm install```
```npm -v```

```node app.js```


192.168.10.100:3000

