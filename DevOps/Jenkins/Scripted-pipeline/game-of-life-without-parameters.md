### To build on master
``` groovy
node {
  withEnv(['JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64']) {
    sh '''export JAVA_HOME=$JAVA_HOME
        mvn package
    '''
  }
}
```
### To build on some node
* Lets assume label of node `JAVA`.
``` groovy
node ('JAVA') {
  withEnv(['JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64']) {
    sh '''export JAVA_HOME=$JAVA_HOME
        mvn package
    '''
  }
}
```