```groovy
---
 pool: devops

 trigger:
   - main


 steps:
   - task: Maven@3
     inputs:
       mavenPomFile: 'pom.xml'
       goals: 'package'
       publishJUnitResults: yes
       testResultsFiles: '**/surefire-reports/TEST-*.xml'
       jdkVersionOption: '1.11'
       javaHomeOption: 'JDKVersion'
```