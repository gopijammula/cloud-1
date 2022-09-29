# To run this script on master
----------------------------
``` groovy
pipeline{
    agent any
    stages {
        stage ('started') {
            steps {
                sh ' echo "Build Success" '
            }
        }
    }
        post {
            always {
                mail subject: 'Build Started', 
                  body: 'Build Started', 
                  to: 'jenkins@gmail.com' 
            }
            failure {
                mail subject: 'Build Failed', 
                  body: 'Build Failed', 
                  to: 'jenkins@gmail.com' 
        }
        success {
                mail subject: 'Build Success', 
                  body: 'Build Success', 
                  to: 'jenkins@gmail.com' 
        }
    }
}
```
# To run this script on node
----------------------------
* Replace `LABEL` with your node label.
```groovy
pipeline{
    agent agent {
        node 'LABEL'
    }
    stages {
        stage ('started') {
            steps {
                sh ' echo "Build Success" '
            }
        }
    }
        post {
            always {
                mail subject: 'Build Started', 
                  body: 'Build Started', 
                  to: 'jenkins@gmail.com' 
            }
            failure {
                mail subject: 'Build Failed', 
                  body: 'Build Failed', 
                  to: 'jenkins@gmail.com' 
        }
        success {
                mail subject: 'Build Success', 
                  body: 'Build Success', 
                  to: 'jenkins@gmail.com' 
        }
    }
}
```