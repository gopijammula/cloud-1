### To build on master
``` groovy
node {
    stage('vcs') {
        git 'https://github.com/wakaleo/game-of-life.git'
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
        git 'https://github.com/wakaleo/game-of-life.git'
    }
    stage('build') {
        sh 'mvn package'
    }
}
```