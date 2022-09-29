# To run this on node execute the below script.
* Replace `JDK` in the below node label with your node label.
```groovy
pipeline {
    agent {
        node 'JDK'
    }
    triggers {
        cron('* * * * *')
    }
    stages {
        stage('syntax') {
            steps {
                sh ' echo "I will get build every minute" '
            }
        }
    }
}
```
-----------------------------------------------------------------
# To run this on master execute the below script.
```groovy
pipeline {
    agent any
    triggers {
        cron('* * * * *')
    }
    stages {
        stage('syntax') {
            steps {
                sh ' echo "I will get build every minute" '
            }
        }
    }
}
```