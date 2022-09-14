### Date: 21/08
## Static Application Security Test(SAST)
* The code written by the developers may not be completely secure
* There is a chance that the code has some unused lines or some vulnerabilities
* This vulnerabilities provides loop hole for the hackers to hack the application
* There is a 100% chance that the code can be compramised at any time if there is some serious vulnerabilities
* These vulnerabilities are not easier to identify by the developers while writting the code
* To scan for such vulnerabilities we use SAST Tools which generates a complete report on all the vulnerabilities
## Sonarqube for SAST (testing code for vulnerabilities)
##### " Sonarqube is one such SAST tool which scans code for all the vulnerabilities and gives the report "
* Sonarqube is a docker image that runs mostly on the docker container
###  Installing docker in ubuntu
  * By default all the ports to the virtual machine will be closed
  * The sonarqube works on port 9000
  * To connect to the sonarqube from the local machine the port 9000 should be open
  * To do this we add a new inbound rule in the Network Security group
  * But just to avoid all the small runtime errors and just for the practice lets open all the ports
  * Connect the server using the following command
```
ssh username@publicip
```
* Execute the following commands in the ubuntu server to install docker
``` 
sudo apt update
curl -fsSL https://get.docker.com -oget-docker.sh
sh get-docker.sh
```
* Change the  user to Docker
```
sudo usermod -aG docker ubuntu
```
> **_NOTE:_** Edit the docker in the above command to your current username
* Exit and relogin to the system
```
exit
```
* lets convert to the root user to install sonarqube.
```
sudo -i
```
To check the docker Installed
```
docker info
```
* To install sonarqube using docker
``` 
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
```
* Connect to the port using port 9000
  * Replace the ip_address with the server public ip address
```
http://ip_address:9000
```
* Login to the portal with 
    * username 
    ```
    admin
    ```
    * password
    ```
    admin
    ```
* Change the password
* Create Manual project or set up a DevOps platform configuration.
* Test project locally or integrate with any CI 
* Generate the token to test the code
* Select the build and Copy the Scanner code generated
* Download the git repository into the system
  * Sample repositories are given below for practice
    * Replace the links with the repository link you want to scan
```
git clone https://github.com/apache/maven.git
```
```
git clone https://github.com/web3j/web3j-maven-plugin.git
```
```
git clone https://github.com/apache/maven-dependency-tree.git
```
```
git clone https://github.com/wvengen/proguard-maven-plugin.
```
* Execute below command to check the list of folders
```
ls
```
* Navigate to the folder containing pom.xml file
* It is Mandatory to have pom.xml file in the folder to Execute Maven project
  * For navigating to the path or directory use below command
    * Replace directory_name with the name of the directory you want to open
    ```
    cd directory_name
    ```
* To Execute the projects in the sonarqube, the packages required for the code needed to be installed
  * Maven is needed to be installed to run maven project
  * Java is needed when we run java project
* Run following command to install maven
```
sudo apt install maven -y
```
* Execute the code generated in the sonarqube portal
* It takes time to Execute and the report generated will automatically shown in the portal
* To scan another code create another project in the portal