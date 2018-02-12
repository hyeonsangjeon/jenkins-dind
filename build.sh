#!/bin/bash

#HOST_DOCK_GID=`awk '/docker:/' /etc/group | grep -o '[0-9]*'`

#docker build --build-arg HOST_DOCK_GID=`awk '/docker:/' /etc/group | grep -o '[0-9]*'` -t modenaf360/jenkins-dind .

docker build -t modenaf360/jenkins-dind .




