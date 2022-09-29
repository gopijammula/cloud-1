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
# To run this on master execute the below script.
-------------------------------------
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