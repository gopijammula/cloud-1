### To build in master
``` groovy
pipeline{
    agent any
    stages{
        stage ('git clone'){
            steps{
                git url: 'https://github.com/spring-projects/spring-petclinic.git',
                branch: 'main'
            }
        }
        stage ('package'){
            steps{
                sh 'mvn package'
            }
        }
    }
}
```
### To build on some node
* Lets assume label of node `JAVA`.
``` groovy
pipeline{
    agent {
        node 'JAVA'
    }
    stages{
        stage ('git clone'){
            steps{
                git url: 'https://github.com/spring-projects/spring-petclinic.git',
                branch: 'main'
            }
        }
        stage ('package'){
            steps{
                sh 'mvn package'
            }
        }
    }
}
```