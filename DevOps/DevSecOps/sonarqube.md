* Commands to install Docker
```
    sudo apt update
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    sudo usermod -aG docker ubuntu # replace your ubuntu with the current user
    exit
```
* Commands to install sonarqube using docker
```
    docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
```

* Install maven for maven projects
```
    sudo apt install maven -y
```