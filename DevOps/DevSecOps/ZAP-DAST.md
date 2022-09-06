#### Date: 26/08
### NVD (National Vulnerability Database)
* This is list of Widely known vulnerabilities
* Top 10 vulnerabilities in the SAST scanning are listed by the OWASP community
  * OWASP Top 10 [Refer Here](https://owasp.org/www-project-top-ten/)
* Top 20 vulnerabilities in the API's are listed by the OWASP community
* This is updated for every 3 or 4 years
  * OWASP API Top 10 [Refer Here](https://owasp.org/www-project-api-security/)

---------------------------------

### OWASP ZAP (DAST)
* OWASP ZAP is an open source tool used to scan the running application for the runtime vulnerabilities
* OWASP ZAP requires only the url to scan the application
* To install zap in the windows server we need chocolety
* Lets install chocolety in the server
* Follow the commands to install chocolety
* Let's give permissions  
```
Set-ExecutionPolicy AllSigned
```
* Now execute the following command to install chocolety
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
* Now lets install zap using chocolety
```
    choco install zap -y
```
* open the zap 
* Copy and paste the url in the given place and click on attack
* After the scan is completed click on the create option in the top left corner and Select generate report
* save the report
#### This report gives the vulnerabilities in the application running