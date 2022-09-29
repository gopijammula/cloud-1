# To run this on node execute the below script.
* Replace `JAVA` in the below node label with your node label.
```groovy
node ('JAva') {
    properties([pipelineTriggers([cron('* * * * *')])])
    stage('build') {
        sh ' echo "I will get build every minute" '
    }
}
```
--------------------------------------------------------------
# To run this on node execute the below script.
```groovy
node {
    properties([pipelineTriggers([cron('* * * * *')])])
    stage('build') {
        sh ' echo "I will get build every minute" '
    }
}
```