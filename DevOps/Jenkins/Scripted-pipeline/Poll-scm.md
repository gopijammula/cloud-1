# Poll SCM
---------------
* Poll scm is building the repository when ever a new change was commited.
* We will create a trigger which will track the repository for every minute or hour of our requirement which will trigger build when ever there is new commit.
* Now lets create a scripted pipeline for the pollscm.
* We know the syntax of the scripted pipeline.
```groovy
node {
    stage ('') {
        //steps
    }
}
```
* Now lets check the syntax for the pollscm triggers [Refer Here](https://www.jenkins.io/doc/book/pipeline/syntax/#triggers) pollscm.
```groovy
properties([pipelineTriggers([pollSCM('* * * * *')])])
```
* Now we have the trigger step which will build for every minute.
* Now lets add this trigger and add git repository to build.
```groovy
node {
    properties([pipelineTriggers([pollSCM('* * * * *')])])
    stage('vcs') {
        git branch: 'main', url: 'https://github.com/spring-projects/spring-petclinic.git'
    }
    stage('build') {
        sh 'mvn package'
    }
}
```
* Now we have the script for the pollSCM.
* Now add this script to the pipeline.
![preview](./Images/sp6.png)
* Build manually for the first time to make the pollSCM added to the pipeline.
![preview](./Images/sp7.png)
* Now the manual build has successful.
![preview](./Images/sp8.png)
* The pollSCM was activated and will start build when there is new commits.
* Now add some commits and wait for a minute to start build.
![preview](./Images/sp9.png)
* The build has start by the SCM.
------------------------------------------------------
# To run this on node execute the below script.
* Replace `JAVA` in the below node label with your node label.
```groovy
node ('JAVA') {
    properties([pipelineTriggers([pollSCM('* * * * *')])])
    stage('vcs') {
        git branch: 'main', url: 'https://github.com/spring-projects/spring-petclinic.git'
    }
    stage('build') {
        sh 'mvn package'
    }
}
```