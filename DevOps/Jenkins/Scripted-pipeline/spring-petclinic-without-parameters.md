### To build on master
``` groovy
node {
    stage('vcs') {
        git
            branch: 'main',
            url: 'https://github.com/spring-projects/spring-petclinic.git'
    }
    stage('build') {
        sh 'mvn package'
    }
}
```
### To build on some node
* Lets assume label of node `JAVA`.
``` groovy
node('JAVA') {
    stage('vcs') {
        git
        branch: 'main',
        url: 'https://github.com/spring-projects/spring-petclinic.git'
    }
    stage('build') {
        sh 'mvn package'
    }
}
```