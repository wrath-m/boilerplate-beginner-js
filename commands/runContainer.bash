#!/bin/bash

. "$(dirname "$0")/../docker.config"

runCommand="docker run --privileged -dit --name "$dockerContainerName""
if [[ $mount && $mount != false ]]; then
    runCommand="$runCommand $mount"
fi
if [[ "$dockerOptions" ]]; then
    runCommand="$runCommand $dockerOptions"
fi
runCommand="$runCommand "$dockerImageName""
$runCommand