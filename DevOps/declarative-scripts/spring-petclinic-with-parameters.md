# To build poject in the master
```groovy
pipeline{
    agent any
    parameters{
        choice(name: 'Branch', choices: ['main', 'springboot3'], description: 'Parameter for branch')
        choice(name: 'mvn', choices: ['clean', 'package'], description: 'build command')
    }
    stages{
        stage ('git clone'){
            steps{
                git url: 'https://github.com/spring-projects/spring-petclinic.git',
                branch: '$Branch'
            }
        }
        stage ('package'){
            steps{
                sh '${mvn}'
            }
        }
    }
}
```
-----------------------------
# To build on some node
* Lets assume label of node `JAVA`.
```groovy
pipeline{
    agent {
        node 'JDK'
    }
    parameters{
        choice(name: 'Branch', choices: ['main', 'springboot3'], description: 'Parameter for branch')
        choice(name: 'mvn', choices: ['clean', 'package'], description: 'build command')
    }
    stages{
        stage ('git clone'){
            steps{
                git url: 'https://github.com/spring-projects/spring-petclinic.git',
                branch: '$Branch'
            }
        }
        stage ('package'){
            steps{
                sh '${mvn}'
            }
        }
    }
}
```