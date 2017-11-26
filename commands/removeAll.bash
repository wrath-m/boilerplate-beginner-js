#!/bin/bash

. "$(dirname "$0")/../docker.config"

docker ps -a | awk '{ print $1,$2 }' | grep "$dockerImageName" | awk '{print $1 }' | xargs -I {} docker rm -f {}
docker rmi "$dockerImageName"
docker rmi $(docker images -f dangling=true -q) > /dev/null 2>&1