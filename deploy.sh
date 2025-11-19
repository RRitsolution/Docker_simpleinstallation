#!/bin/bash

##Author Name: Nirmal Shanker

##Author email: nirmal.elex@gmail.com

##Shell script is for automate deployment


set -x
set -e
set -u
set -o


echo "Pull the application codes from repository"
       git pull https://github.com/RRitsolution/Docker_simpleinstallation.git


echo "Building the docker image"

      docker build -t shellscriptapp:latest .


echo "stop the container"

      docker stop shellscritcontainer || true


echo "removing the container"

      docker rm shellscritcontainer || true


echo "Finally starting container"

     docker run -dt --name shellscritcontainer shellscriptapp:latest /bin/bash


