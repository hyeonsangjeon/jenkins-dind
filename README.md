Jenkins Docker in Docker(dind) 
===

### This example can be used to create a Docker image using the Jenkins build automation system. , having:

- Jenkins
- docker
- How to add docker host and client

 
#### To try the example, you need to have a docker installed on your OS. And needed sudoers account permission[1]


 After docker installation, execute this command to bake a docker image in a terminal:
```console
build.sh
```

 Let's make sure that the build is normally done.:  
```console
docker images
```

##### To run docker, excute this command in a ternimal:
```console
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 --privileged -v /jenkins_dind_home:/var/jenkins_home  -v /var/run/docker.sock:/var/run/docker.sock modenaf360/jenkins-dind:latest
```

##### If want set TimeZone
```console
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 --privileged -v /jenkins_dind_home:/var/jenkins_home  -v /var/run/docker.sock:/var/run/docker.sock -e TZ=Asia/Seoul modenaf360/jenkins-dind:latest
```

 Check rest index call :
```console
http://localhost:8080
```

 If you want to get into docker container os, excute this command [2] :
```console
docker exec -i -t jenkins /bin/bash
```

 And let's check if the docker command is called well in the docker container.  :
```console
docker images
```

## docker options are as follows,

|Variables      |Description                                                   |
|---------------|--------------------------------------------------------------|
|'run'          |run                                                           |  
|'-d'           |background run                                                | 
|'-p'           |expose port conainer core-os port to your os (port fowarding) |
|'--name'       |container nickname                                            |
|'-privileged'  |This option allows you to use all of the host's Linux kernel features within the container.|                  
|'-i'           |enable bash standard input (stdin)                            |
|'-t'           |using bash TTY mode (pseudo-TTY)                              |


## Reference
[1].https://docs.docker.com/engine/installation/
[2].https://docs.docker.com/engine/reference/commandline/cli/#environment-variables


