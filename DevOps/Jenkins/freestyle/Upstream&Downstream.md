Upstream & Downstream
---------------------
# Upstream
* Upstream is the process of triggering another job after completing the running of current job.
# Downstream
* Downstream is the process of getting triggered by another job after completing the running of previous job.
-------------------------------------------------
# Creating trigger
------------------
* Lets create a job `first job`.
![preview](../Images/Jenkins116.png)
![preview](../Images/Jenkins117.png)
* For now just build a sample project.
![preview](../Images/Jenkins118.png)
![preview](../Images/Jenkins119.png)
![preview](../Images/Jenkins120.png)
* Just to confirm the working condition build the project.
* Now Lets create a new job `Second job`.
![preview](../Images/Jenkins121.png)
![preview](../Images/Jenkins122.png)
![preview](../Images/Jenkins123.png)
* We have created the `Second job`.
* Lets create the post build trigger.
* go to the configure of `first job`.
![preview](../Images/Jenkins124.png)
![preview](../Images/Jenkins125.png)
* We have created the trigger to Second job.
* Now lets build the first job.
![preview](../Images/Jenkins126.png)
* Now navigate to the second job.
![preview](../Images/Jenkins127.png)
* We can see that the second job was triggered by the first job.
* First job is the Upstream project of the Second job.
* Now lets check the status of the first job.
![preview](../Images/Jenkins128.png)
* The first job is the Downstream project of the Second job.

* We can add as many jobs using this process by adding trigger to the every last job.