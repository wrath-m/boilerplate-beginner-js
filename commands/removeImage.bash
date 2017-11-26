#!/bin/bash

. "$(dirname "$0")/../docker.config"

docker rmi "$dockerImageName"
docker rmi $(docker images -f dangling=true -q) > /dev/null 2>&1