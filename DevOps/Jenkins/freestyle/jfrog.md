# Jfrog Project Freestyle
-----------------------
* First we need to configure the jfrog using jenkins plugin.
* If you have not configured the jfrog in your jenkins server  [Refer Here](../jfrog.md).
* Now we have jfrog has configured the jfrog.
# Maven Path configure
--------------------
* We have to configure the maven path before we deploy the maven artifacts.
* Navigate to the `manage jenkins` > `Global Tool Configuration`.
![preview](./Images/fs12.png)
![preview](./Images/fs13.png)
* Give the name of `maven`.
* Give the path of your maven home.
* Generally it is in `/usr/share/maven`.
```
/usr/share/maven
```
* Save the changes.
![preview](./Images/fs14.png)
# Freestyle Project
------------------
* create a project.
![preview](./Images/fs0.png)
* Select maven Project and click on ok.
![preview](./Images/fs1.png)
* If you want to run the project in the node Select restrict and provide your label of the node.
* Now get the url and branch of the repository which you want to build.
* For this project im using spring pet clinic to build.
```
https://github.com/spring-projects/spring-petclinic.git
```
![preview](./Images/fs2.png)
![preview](./Images/fs3.png)
![preview](./Images/fs4.png)
* Select the maven path and give the steps.
![preview](./Images/fs5.png)
* Select run only if build succeeds to stop deployment failed when the build failed.
![preview](./Images/fs6.png)
![preview](./Images/fs7.png)
* Now we need these releases repository and snapshot repository.
* These are present in the jfrog portal.
* Now lets get back to the jfrog.
![preview](./Images/fs8.png)
* Select the maven.
![preview](./Images/fs9.png)
* These are the releases and snapshot repositories.
* Now lets go back to jenkins server and enter these repositories names.
![preview](./Images/fs10.png)
![preview](./Images/fs11.png)
* Now save the project and build the project.
![preview](./Images/fs15.png)
* The build was succeed.
![preview](./Images/fs16.png)
* Now lets check the jfrog portal.
![preview](./Images/fs17.png)
![preview](./Images/fs18.png)
![preview](./Images/fs19.png)
* Deployment succeed.