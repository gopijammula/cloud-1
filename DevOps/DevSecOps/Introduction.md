# Detailed Introduction for DevSecOps
----------------------------------------------
### DevSecOps Scans for vulnerabilities in
    * Network
    * Os
    * code
    * Dependency
    * Application
    * Hardware

-----------------------------

### Date: 18/08

##### Mandatory scans in the devops CI/CD
* Software Composition Analysis (SCA)
    * Dependencies used in the build
        * Frameworks
        * API's
* Static Application Security Test (SAST)
    * Scaning the code developed by the developer to find all the vulnerabilities in the code

* Dynamic Application Security Test(DAST)
    * Scaning the applications which are build, deployed and running
        * Ex: Websites, Webapps, Containers, Operating systems , Docker images
 
---------
### Date: 01/09
* Trusted Advisor
    * Default enabled in the account for  scans 
* AWS Guard Duty
    * This gives option to block the ip_addresses 
* AWS Macie:
    * This service scans for sensitive content on the S3 buckets.
    * PII (Personally Identifiable Information) should not be stored in logs of your application.