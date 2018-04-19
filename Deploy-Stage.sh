#!/usr/bin/env bash

#Deploy to GCP Ubuntu via ssh
# ssh -i "/home/ubuntu/Jmy_Key_GCP_Apr_2018.pem" jimmycgz@35.185.13.195 VM deleted in GCP
# Can't connect via ssh in shell script file, tried below in Jenkins Build script section but doesn't work either.
# ssh -i "/home/ubuntu/Jmy_Key_GCP_Apr_2018.pem" jimmycgz@35.185.13.195 < Deploy-Stage.sh

ssh -i "/home/ubuntu/Jmy_Key_GCP_Apr_2018.pem" jimmycgz@35.227.39.237

cd /home/jimmycgz 
rm -rf webphp1
mkdir -p /home/jimmycgz/webphp1
cd /home/jimmycgz/webphp1
git init
git remote add origin https://github.com/jimmycgz/webphp1.git
git pull origin master


docker rm -f docker-php-hello  || true 

docker build -t webphp1hello /home/jimmycgz/webphp1/
docker run --name=docker-php-hello -d -it -p 80:80 webphp1hello

#docker image rm -f $(docker images -aq)
