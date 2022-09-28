### Build FreeStyle project with parameters
-------------------------------------------
* Install and connect to the jenkins.
*  [Refer Here](jenkins-Install.md) to install and connect to the jenkins master.
*  Now lets create the freestyle project with build parameters.
![preview](./Images/Jenkins143.png)
![preview](./Images/Jenkins144.png)
* Select `This project is parameterized` in general.
![preview](./Images/Jenkins145.png)
![preview](./Images/Jenkins146.png)
* For now lets just give the choice parameters.
* Lets give user to select which to get clone while build.
* Lets create a parameter containing the branches of the repositor.
* Lets build spring petclinic for now.
![preview](./Images/Jenkins147.png)
* Now lets add a parameter to provide the mvn command.
* Lets add `package`, `clean`.
![preview](./Images/Jenkins148.png)
* Now provide the repository url.
```
https://github.com/spring-projects/spring-petclinic.git
```
* Then give the package parameter to the build steps.
![preview](./Images/Jenkins149.png)
![preview](./Images/Jenkins150.png)
* We have configured the build steps and parameters.
* Now lets build the project.
![preview](./Images/Jenkins151.png)
![preview](./Images/Jenkins152.png)
* The build was successful.