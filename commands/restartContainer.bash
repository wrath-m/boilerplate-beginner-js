#!/bin/bash

. "$(dirname "$0")/../docker.config"

if [[ $(docker ps -a | grep -w "$dockerImageName" | grep -w "$dockerContainerName") ]]; then
    docker stop "$dockerContainerName" && docker start "$dockerContainerName"
else
    echo 'there is no container with this name using the required image'
fi