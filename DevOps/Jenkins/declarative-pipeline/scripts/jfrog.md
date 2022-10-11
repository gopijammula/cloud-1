```groovy
pipeline {
    agent any
    stages {
        stage('Source Code') {
            steps {
                git url: 'https://github.com/GitPracticeRepo/spring-petclinic.git', 
                branch: 'main'
            }
        }
        stage('Artifactory-Configuration') {
            steps {
                rtMavenDeployer (
                    id: 'declarative',
                    serverId: 'declarative',
                    releaseRepo: 'frog-libs-release-local',
                    snapshotRepo: 'frog-libs-snapshot-local',
                    deployArtifacts: true,
                )
            }
        }
        stage('Build the Code') {
            steps {
                rtMavenRun (
                    // Tool name from Jenkins configuration.
                    tool: 'Maven',
                    pom: 'pom.xml',
                    goals: 'clean install package deploy',
                    // Maven options.
                    deployerId: 'declarative',
                )
            }
        }
}
}
```