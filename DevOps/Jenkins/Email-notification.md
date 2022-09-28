### Sending Email Notification
------------------------------
* For the jenkins install and configu [Refer Here](jenkins-Install.md).
* For now lets use some fake Email tracker.
* create a mailtrap account using gmail.
* To create an account [Refer Here](https://mailtrap.io/).
* Now we have a mailtrap id.
![preview](./Images/Jenkins157.png)
* Now lets configure the mail.
* Click on manage jenkins.
![preview](./Images/Jenkins158.png)
![preview](./Images/Jenkins159.png)
![preview](./Images/Jenkins160.png)
![preview](./Images/Jenkins161.png)
![preview](./Images/Jenkins162.png)
* Now we have configured the email alerts for the jenkins.
![preview](./Images/Jenkins163.png)
* Now we need to enable the email Notification in the projects.
* Now lets create a project and enable Notifications for failed builds.
![preview](./Images/Jenkins164.png)
![preview](./Images/Jenkins165.png)
* Spring petclinic actually has main branch but we have given master branch.
* Now lets add post build email Notification.
![preview](./Images/Jenkins166.png)
![preview](./Images/Jenkins167.png)
* Now we ahve added email alert for the failed builds.
* Now lets build the project.
* Lets build the project.
![preview](./Images/Jenkins168.png)
* The builds are failed and lets check the mail trap.
![preview](./Images/Jenkins169.png)
* We have recieved the mail for the failed build.
* Now lets change the branch to main and again build the project.
![preview](./Images/Jenkins170.png)
* Now lets build and check the mailtrap.
![preview](./Images/Jenkins171.png)
* The build was success and lets check the mailtrap.
![preview](./Images/Jenkins172.png)
* We had received the mail when the build has completed.