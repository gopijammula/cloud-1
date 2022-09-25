# Installing jenkins
---------------------
### Creating Resources
----------------------
> **_NOTE:_** Create all the resource including resource group in one location.
* Create a resource group `Jenkins`.
![preview](./Images/Jenkins0.png)
* Create a Virtual Network `jenkinsVnet` - 10.0.0.0/16 and add a subnet `JenkinsSubnet` - `10.0.0.0/24`.
> **_NOTE:_** This is the default Network configurations. So no need to change anything just give the name and click review+Create.
![preview](./Images/Jenkins1.png)
* Create a Network Security Group `JenkinsNSG` and add an inbound rule by opening 8080 port.
![preview](./Images/Jenkins2.png)
* Now Create a Ubuntu Virtual Machine `Jenkins`.
> **_NOTE:_** Select `jenkinsVnet` - `JenkinsSubnet` - `JenkinsNSG` while creating VM.
![preview](./Images/Jenkins3.png)
* Connect to the Virtual Machine `ssh username@ipaddress`.<br  ><br  ><br  ><br  >
# Install Jenkins in Master <br  ><br  ><br  >
------------------------------
* Get the system update.
```
sudo apt update
```
* Now lets install jenkins in the master.
* [Refer Here](https://www.jenkins.io/doc/book/installing/linux/#debianubuntu) for the official documentation to install jenkins in the ubuntu OS.
* Now lets look for the basic requirements to install jenkins.
![preview](./Images/Jenkins4.png)
* For now we have all the requirements except java.
* So lets install java-11 for now in the first place.
```
sudo apt install openjdk-11-jdk -y
```
* Now lets move to the installation in ubuntu.
  * We have two types of releases
    * Weekly releases
    ![preview](./Images/Jenkins6.png)
    * Long Term Support release
    ![preview](./Images/Jenkins5.png)
* For now lets go with long term release version.
* Copy the commands given in the documentation under the long term Support release.
> **_NOTE:_** The below commands may be outdate any day so go to the official documentation and copy the commands from there will be the best option.
```
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
```
```
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
```
```
sudo apt-get update
sudo apt-get install jenkins -y
```
* Now we have successfully installed jenkins.
* Lets Connect to the jenkins UI.
* Copy the ipaddress from the portal.
* Open the web browser and paste the copied ipaddress followed by `:8080`.
```
http://<ip-address-of-jenkins-master>:8080
```
* Now we can see the jenkins portal and asking for the password.
![preview](./Images/Jenkins7.png)
* We can see the path where we can find the default password for the jenkins admin.
* Now lets get the password from the given path and copy it.
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
![preview](./Images/Jenkins8.png)
* Copy the password and use it to login as admin.
![preview](./Images/Jenkins9.png)
* We can install the suggested plugins or we can install the plugins which we want.
* For now lets install suggested plugins only.
* Now give the credentials and create admin account.
![preview](./Images/Jenkins10.png)
![preview](./Images/Jenkins11.png)
* This is how the UI of the Jenkins looks like.
![preview](./Images/Jenkins12.png)
<br  ><br  ><br  ><br  ><br  >
### Creating first sample project<br  ><br  >
-----------------------------
* Lets create a new project in the jenkins `first job`.
![preview](./Images/Jenkins13.png)
![preview](./Images/Jenkins14.png)
![preview](./Images/Jenkins15.png)
![preview](./Images/Jenkins16.png)
* Now let's give some commands in the Build steps.
```
whoami
pwd
sudo apt update
```
![preview](./Images/Jenkins17.png)
* Now lets build the project.
* Click on the build now to start build the project.
![preview](./Images/Jenkins18.png)
* We can see that the build has failed.
![preview](./Images/Jenkins19.png)
* Click on the red icon to check the console output.
![preview](./Images/Jenkins20.png)
* The build has failed because the jenkins user does not have sudo permissions.
* Now we have to give sudo permissions to the jenkins user.
* Login to the system and ececute the following commands to open the sudoers file to give sudo permissions to the jenkins user.
```
sudo visudo
```
* Now sudoers file has opened in the vi editor.
```
jenkins ALL=(ALL:ALL) NOPASSWD:ALL
```
> **_NOTE:_** Replace the user name `jenkins` in the above command with the user name you have given while creating the jenkins account.
> 
> If you dont know the username it is in the above picture.
* Enter the above line in the file.
![preview](./Images/Jenkins21.png)
* press `ctrl+x`, enter `y`, click `enter`.
* Now the jenkins user has all the sudo permissions.
* Now lets build the project again.
![preview](./Images/Jenkins22.png)
![preview](./Images/Jenkins23.png)
![preview](./Images/Jenkins24.png)
* Now the build has success.
<br  ><br  ><br  ><br  ><br  >
# Lets build a project<br  ><br  ><br  >
------------------------
* Lets go back to the dashboard.
![preview](./Images/Jenkins25.png)
* Lets add a new project just like we do this before for first project.
![preview](./Images/Jenkins26.png)
* Click on the build steps.
* Click on add build steps.
* Click on Execute shell.
* Enter the below command to build the project.
  * To build this project we need to install maven.
  * Replace maven installation command with any command to install required packages.
```
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
sudo apt install maven -y
mvn package
```
> **_NOTE:_** Replace the git url with the url of your project.
* Now Lets save the configuration.
![preview](./Images/Jenkins27.png)
* Click on Build Now to start building the project.
![preview](./Images/Jenkins28.png)
* Click on blue icon to see the console output.
* The build has started and take time complete build.
![preview](./Images/Jenkins29.png)
* The build has success.