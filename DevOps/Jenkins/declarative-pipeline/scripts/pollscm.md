# To run this on node execute the below script.
* Replace `JDK` in the below node label with your node label.
```groovy
pipeline {
    agent {
        node 'JDK'
    }
triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('trigger') {
            steps {
                git branch: 'main', url: 'https://github.com/rajnikanth1999/spring-petclinic.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
```
-----------------------------
# To run this on master execute the below script.
```groovy
pipeline {
    agent any
triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('trigger') {
            steps {
                git branch: 'main', url: 'https://github.com/rajnikanth1999/spring-petclinic.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
```