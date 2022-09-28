### To build in master
``` groovy
pipeline{
    agent any
    environment {
        JAVA_HOME = "/usr/lib/jvm/java-8-openjdk-amd64"
    }
    stages{
        stage ('git clone'){
            steps{
                git url: 'https://github.com/wakaleo/game-of-life.git'
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
    environment {
        JAVA_HOME = "/usr/lib/jvm/java-8-openjdk-amd64"
    }
    stages{
        stage ('git clone'){
            steps{
                git url: 'https://github.com/wakaleo/game-of-life.git'
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