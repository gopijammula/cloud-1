# Detailed Introduction for DevSecOps
----------------------------------------------
### DevSecOps
* DevSecOps is a trending practice in application security (AppSec) that involves introducing security earlier in the software development life cycle (SDLC).
* DevSecOps means thinking about application and infrastructure security from the start.
* It also means automating some security gates to keep the DevOps workflow from slowing down.
----------------
### DevSecOps Scans for vulnerabilities in
* Network
  * Hackers can enter through our network if it has low security and more vulnerabilities.
  * But as most of the applications are running in the virtual network, Entering into virtual network is not easy.
* OS
  * The application running on the serve with any Operating system is dependent on the server OS.
  * The application is vulnerable if the OS is vulnerable so we need to take care of OS to make our application more secure.
* code
  * The code written by our developer will have some minor or major secure issues.
  * But we need to make the code more reliable and secure to maintain the security of our application.
* Dependency
  * While developing code for the application, the developers use some dependencies.
  * These dependencies are developed by others and there will be some vulnerabilities in the dependencies.
  * These will also open gates for the hacker to enter into the system.
  * We scan for the vulnerabilities present in the dependencies that are used in the code developed.
* Application
  * While the application is running in the real time there might be some real time vulnerabilities like sql injections etc.
  * To find these types of runtime vulnerabilities we scan our application.
* Hardware
  * There are very rare and impossible cases our hardware is vulnerable.
  * Our hardware is vulnerable only if the hacker gets access to the server physically.
  * In most of the cases this is not happen.
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
    * This gives option to block the ip_addresses.
    * If the competitors or any others try to hack or keep our server busy wantedly.
    * We enter the ip_addresses of those people and block them from entering into our application or the server.
* AWS Macie:
    * This service scans for sensitive content on the S3 buckets.
    * PII (Personally Identifiable Information) should not be stored in logs of your application.