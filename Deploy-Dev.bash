#!/usr/bin/env bash

#Deploy to AWS Ubuntu

cd /home/jimmycgz 
rm -rf webphp1
mkdir -p /home/jimmycgz/webphp1
cd /home/jimmycgz/webphp1
git init
git remote add origin https://github.com/jimmycgz/webphp1.git
git pull origin master

#docker image rm -f $(docker images -aq)
docker rm -f docker-php-hello  || true 

docker build -t webphp1hello /home/jimmycgz/webphp1/
docker run --name=docker-php-hello -d -it -p 80:80 webphp1hello
