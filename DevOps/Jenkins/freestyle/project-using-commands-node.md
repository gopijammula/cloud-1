### Building the project
-------------------------
* Now lets create a new project and build the project in the jenkins node.
![preview](../Images/Jenkins61.png)
![preview](../Images/Jenkins62.png)
![preview](../Images/Jenkins63.png)
> **_NOTE:_** * Replace the Label Expression with the label given while creating new node.
![preview](../Images/Jenkins64.png)
* Enter the following commands in the build steps.
```
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
sudo apt install maven -y
mvn package
```
* We have configure the build steps.
* Lets start building the project.
![preview](../Images/Jenkins65.png)
![preview](../Images/Jenkins66.png)
> **_NOTE:_** 
> * The buid history will be in the jenkins master.
> * The workspace will be in the jenkins node workspace.

![preview](../Images/Jenkins67.png)
* We can see that the build was successfull.