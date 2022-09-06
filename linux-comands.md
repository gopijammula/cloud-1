### Linux Commands
* To connect SSH port of the virtual machine
```
ssh username@publicip 
```
* To reboot the system
```sudo systemctl reboot
```
* To connect sftp to the remote virtual machine
```
sftp username@publicip
```
* To upload a folder from our system to remote virtual machine
```
put -r "folder location" 
```
* To uploda a file from our system to remote virtual machine
```
put "file location"
```
* To upload a folder from our system to remote virtual machine
```
get -r "folder location" 
```
* To uploda a file from our system to remote virtual machine
```
get "file location"
``` 
* To get the current path of the directory
```
pwd
```
* To get the list of all the items in the folder
```
ls
```
* To create an empty folder
```
mkdir folder_Name
```
* To create an empty folder with space between name "folder name" 
```
mkdir folder\ name
```
* To remove a folder
```
rm -r folder_Name
```
* To remove a folder with space between name
```
rm -r folder\ name
```
* To create empty file 
```
touch file_name
```
* To remove file
```
rm file_name
```
* To copy the files from one path to another
    * The first path is the current file path and second one is the destination path
```
cp current _file_name destination
```
* To move the files from one path to another
    * The first path is the current file path and second one is the destination path
    * This will rename the file name if moved to same directory
```
mv current _file_name destination
``` 
* To create file with some text 
```
echo Here is the text of the file >> text_file.txt
```
* To get the file content with out opening editor
```
cat file_name
```
* Nano text editor to edit existed file or create and open in editor
  * To exit from nano editor press ctl+x and then enter.
```
nano file_name
```
* Vi text editor to edit existed file or create and open in editor
  * To start edit the file press i
  * To exit from insert press esc
  * To exit from editor enter ":wq" or ":q!"
```
vi file_name
```
* To check the Network connection use ping
```
ping google.com
```
* To power off the system
```
sudo halt
```
* To restart the system
```
sudo systemctl reboot
```
* To find files in the current directory
```
find . -name file_name
```
* To find files in the other directory
  * Replace /folder/path with the directory path
```
find /folder/path/ -name file_name
```
* To find the directory
```
find -type d -name foldername
```
* To view the first 10 lines of the file
```
head file_name
```
  * To view only specific no of lines
    * Replace 5 with no of lines wanted
    ```
    head -n 5 file_name
    ```
* To view the last 10 lines of the file
```
tail file_name
```
  * To view only specific no of lines
    * Replace 5 with no of lines wanted
    ```
    tail -n 5 file_name
    ```
* To check the cpu usage
```
Top
```
* To find the history of given commands
```
history
```
* To know more about manual commands
```
man command
```
* To view the private ip address
```
hostname -i
```
* To add a new user to the system
```
adduser username
```
* To delete an existed user 
```
deluser username
```