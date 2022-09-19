# Configuring the nodes
-----------------------
### Configuring Jenkins Master
*  [Refer Here](./jenkins-Install.md) for instructions of installing node.
----------------
### Create a VM to configure jenkins node
--------------
* To configure jenkins node we need a vm.
* Lets create a virtual machine.
* Create a VM using the same `Resource group`, `Location`, `virtual network`, subnet and `network security group.`
* Create virtual machine using username and password.
![preview](./Images/Jenkins50.png)
![preview](./Images/Jenkins51.png)
----------------------------------
### Configuring the jenkins node using username and password.
------------------
* To configure the vm as a jenkins node and to run the projects using jenkins it needs java packages.
* Now lets connect to the jenkins node using ssh and install java 11 `ssh <username>@<ip-address>`.
* After connecting to the node execute the following commands to install java.
```
sudo apt update
sudo apt install openjdk-11-jdk -y
```
* Now we have java installed in our nodes.
* Now connect to the jenkins through any web browser.
> **_NOTE:_** * Ignore if you have already connect to the Jenkins Master
```
http://<ip-address>:8080
```
* Now lets add our jenkins node to the jenkins master.
* Follow the picture below to configure the jenkins node to the jenkins master.
![preview](./Images/Jenkins52.png)
![preview](./Images/Jenkins53.png)
![preview](./Images/Jenkins54.png)
![preview](./Images/Jenkins55.png)
![preview](./Images/Jenkins56.png)
> **_NOTE:_** Change the Remote Root Directory to your node user home directory 

![preview](./Images/Jenkins57.png)
> **_NOTE:_** Change the Host to your node's private ip-address.

![preview](./Images/Jenkins58.png)
![preview](./Images/Jenkins59.png)
![preview](./Images/Jenkins60.png)
------------------------------
### Configuring the jenkins node using username and SSH KEY.
------------------
* To configure the vm as a jenkins node and to run the projects using jenkins it needs java packages.
* Now lets connect to the jenkins node using ssh and install java 11.
* `ssh -i <path-to-pem-file> <username>@<ip-address>` OR
* `ssh <username>@<ip-address>`
* After connecting to the node execute the following commands to install java.
```
sudo apt update
sudo apt install openjdk-11-jdk -y
```
* Now we have java installed in our nodes.
* Now connect to the jenkins master through any web browser.
> **_NOTE:_** * Ignore if you have already connect to the Jenkins Master
```
http://<ip-address>:8080
```
* Now lets add our jenkins node to the jenkins master.
* Follow the picture below to configure the jenkins node to the jenkins master.
![preview](./Images/Jenkins68.png)
![preview](./Images/Jenkins69.png)
![preview](./Images/Jenkins70.png)
> **_NOTE:_** Change the Remote Root Directory to your node user home directory 

![preview](./Images/Jenkins71.png)

> **_NOTE:_** Change the Host to your node's private ip-address.

![preview](./Images/Jenkins72.png)
![preview](./Images/Jenkins73.png)
![preview](./Images/Jenkins74.png)
------------------------
### Building the project
-------------------------
* Now lets create a new project and build the project in the jenkins node.
![preview](./Images/Jenkins61.png)
![preview](./Images/Jenkins62.png)
![preview](./Images/Jenkins63.png)
> **_NOTE:_** * Replace the Label Expression with the label given while creating new node.
![preview](./Images/Jenkins64.png)
* Enter the following commands in the build steps.
```
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
sudo apt install maven -y
mvn package
```
* We have configure the build steps.
* Lets start building the project.
![preview](./Images/Jenkins65.png)
![preview](./Images/Jenkins66.png)
> **_NOTE:_** 
> * The buid history will be in the jenkins master.
> * The workspace will be in the jenkins node workspace.

![preview](./Images/Jenkins67.png)
* We can see that the build was successfull.