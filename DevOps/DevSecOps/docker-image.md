##### Date: 28/08
### Docker images
* We use docker containers to run some docker images.
* These docker images helps in the building and deploying applications.
* There are some vulnerabilities present in the docker images.
* To know these vulnerabilities we need to scan these images there are many tools.
* AWS ECR is one of the mostly used tool.
### AWS Elastic Container Repository(ECR)
* This is a Elastic container repository in the aws cloud to check all the vulnerabilities in  docker images.
* When the development is based on the docker image or container then the vulnerabilities in those docker images made our applications vulnerable.
* To know all these vulnerabilities we will scan the images using ECR and generate report on all the vulnerabilities present in the images.
### AWS IAM
* To scan any image in ECR, we need an AWS account.
* After creating an aws account. Lets create an IAM user to integrate aws account with cli.
* Create an IAM user [Refer Here](https://sst.dev/chapters/create-an-iam-user.html)
* Save the aws generated Secret Access key and Access key.
* Sample Access keys
* AWS Access keys generated to login in ubuntu
* ```Secret Access Key  -  72fUVD6VmBKDzWz+gsMpaaDmQineNPuShcpdZn3X```
* ```Access Key -  AKIAVG5C5SAHDQRF52JJ```
### AWS CLI
* Create and connect to the ubuntu server
* For the official docs of how to connect aws cli to the ubuntu or other OS [Refer Here](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
* Lets download the aws cli to the server.
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```
* Now Lets check for the downloaded file
```
ls
```
* If the file named awscliv2.zip or the file name with the version you have downloaded then aws cli is successfully downloaded.
* Now to unzip this zip file we need to install unzip package.
```
sudo apt install unzip
```
* Now unzip the file using following command.
```
unzip awscliv2.zip
```
* Now Lets install the downloaded file.
```
sudo ./aws/install
```
* Now the aws cli has successfully installed.
* To check the awscli installed or not Execute the following command.
```
aws --version
```
* Now lets configure the aws cli with our account.
* To configure Execute following command.
```
aws configure
```
* When the configuration ask for Access keys provide the Access keys.
### Install Docker in the server
* To install docker run following commands
```sudo apt update
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```
Replace ubuntu with the server username in the below command.
```
sudo usermod -aG docker ubuntu
exit
```
* Relogin to the server.
* Now download the docker image you want to scan.
  * Here for instance we are scaning tomcat version 9.
```
docker image pull tomcat:9
```

### Process of scaning docker images in AWS ECR
* Now login to AWS Console and search for ECR
* Click on Create repository
* Create new and enable scan to push (Here it is test)
* Now Select the created repository and click on "view push commands".
> **_NOTE:_**  If you just want to try the aws ECR working method then just execute all the commands given in the portal.
> Don't follow the below steps.
* Copy and Execute the first command.
* Skip second command if you already have docker image installed.
> **_NOTE_:** In this case we had already installed tomcat9.
* Edit third command replace test:latest with the docker image and execute.
> **_NOTE:_** In this case it is tomcat:9
* Edit forth command replace test:latest with the docker image and execute.
> **_NOTE:_** In this case it is tomcat:9

* To view scan report
    * Open repository and click on image
    * Click on details under the vulnerabilities to view the complete report