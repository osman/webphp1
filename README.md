# docker-php-hello-world

## Overview

Jmy Jenkins Instance on AWS:
http://ec2-35-182-104-99.ca-central-1.compute.amazonaws.com:8080/

Jmy container instance on GCP &AWS:
http://35.227.39.237/

Jmy container instance on AWS:
http://ec2-35-182-104-99.ca-central-1.compute.amazonaws.com/

This project demonstrates how to package and run a simple PHP application using
Docker.

## Step1: Initial and pull Master Repo from Github
cd /home/jimmycgz
rm -rf webphp1
mkdir webphp1
cd webphp1
git init
git remote add origin https://github.com/jimmycgz/webphp1.git
git pull origin master

cd /home/jimmycgz/webphp1

## Step2: Delete all existing images and containers, build a new image with php7.1 pakge(indicated in Dockerfile)
docker image rm -f $(docker images -aq)
docker rm -f $(docker ps -aq)
docker build -t webphp1hello /home/jimmycgz/webphp1/
docker run --name=docker-php-hello -d -it -p 80:80 webphp1hello



## Running

First, you'll need to install Docker if you haven't done that already. You can
learn how to install Docker at http://docs.docker.com/engine/installation/.

Next, you need to build the Docker image. You can do this by running the
`./build.sh` command.

After building, run the `./run.bash` script from your command line to start a
local Docker instance serving the website. You'll be able to access it at
http://localhost on Linux or http://192.168.99.100 (by default) on Mac OS X.

## Accessing the container

If something doesn't work with your application, you might want to connect to a
shell on the machine so that you can investigate further.

Run `docker exec -it docker-php-hello-world bash` to open a Bash shell as root
in your Docker container. Then, you can run commands as you would on any other
server.

If you need to install something, for example, a text editor, don't forget to
run `apt-get update` first, or you won't be able to install anything.

## Cleaning up

To see the list of all Docker images available on your machine, you can use the
`docker images` command. If you've run the commands above, you'll see
`docker-php-hello-world` in the list. You can delete the image to free up disk
space by running `docker rmi docker-php-hello-world`.
