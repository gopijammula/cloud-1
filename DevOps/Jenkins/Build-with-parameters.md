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
------------------------------------<br><br>
### Build FreeStyle project with parameters <br>
------------------------------------------------
* Now lets create a pipeline project with parameters.
* Lets create a Declarative pipeline project and build spring petclinic.
![preview](./Images/Jenkins153.png)
![preview](./Images/Jenkins154.png)
* Now we know the script to build the Declarative pipeline script.
* [Refer Here](declarative-scripts/spring-pet-clinic-without-parameters.md)
* Now we need to add some parameters to this project.
* [Refer Here](https://www.jenkins.io/doc/book/pipeline/syntax/#parameters) for the syntax to use parameters.
* The parameters should writte at the level of agents and stages.
* Now declare a parameter for the git branch.
```groovy
choice(name: 'Branch', choices: ['main', 'springboot3'], description: 'Parameter for branch')
```
* Now lets give parameter for the maven build.
```
choice(name: 'mvn', choices: ['clean', 'package'], description: 'build command')
```
* Now we have the parameter configured.
* Now lets add this parameters to the script.
```
parameters{
    choice(name: 'Branch', choices: ['main', 'springboot3'], description: 'Parameter for branch')
    choice(name: 'mvn', choices: ['clean', 'package'], description: 'build command')
} 
```
* Add the above code to the pipeline in the agent and stage level.
* Now lets declare this parameters to the stages.
* To declare Branch parameter.
```groovy
steps{
        git url: 'https://github.com/spring-projects/spring-petclinic.git',
        branch: '$Branch'
            }
```
* Now we have added the branch parameter.
* Now lets add the build parameter.
```groovy
steps{
    sh '${mvn}'
}
```
* Now the declaration of the parameters has completed and our pipeline script is ready to ececute.
* For the pipeline developed [Refer Here](declarative-scripts/spring-petclinic-with-parameters.md).
* Now lets add the pipeline to the project and build the project.
![preview](./Images/Jenkins155.png)
![preview](./Images/Jenkins156.png)
* The build was successful.
* For running same project on node [Refer Here](declarative-scripts/spring-petclinic-with-parameters.md).