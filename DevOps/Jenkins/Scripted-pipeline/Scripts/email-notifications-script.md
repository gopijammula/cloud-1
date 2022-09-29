# To build in master
--------------------
```groovy
node {
    stage ('Started') {
            mail subject: "Build Started",
                body: "Build Started", 
                to: 'mail@gmail.com'
        }
    try {
        stage('mail') {
            git url: 'https://github.com/GitPracticeRepo/game-of-life.git',
                branch: 'master'
        }
        stage ('Success') {
            mail subject: "Build Success",
                body: "Build Success", 
                to: 'mail@gmail.com'
        }
    }
    catch(err) {
        mail subject: "Build Failed",
            body: "Build Failed", 
            to: 'mail@gmail.com'
    }
}
```
--------------------------------
# To run the same script in node
--------------------------------
* Replace `LABEL` with your node label
```groovy
node ('LABEL') {
    stage ('Started') {
            mail subject: "Build Started",
                body: "Build Started", 
                to: 'mail@gmail.com'
        }
    try {
        stage('mail') {
            git url: 'https://github.com/GitPracticeRepo/game-of-life.git',
                branch: 'master'
        }
        stage ('Success') {
            mail subject: "Build Success",
                body: "Build Success", 
                to: 'mail@gmail.com'
        }
    }
    catch(err) {
        mail subject: "Build Failed",
            body: "Build Failed", 
            to: 'mail@gmail.com'
    }
}
```