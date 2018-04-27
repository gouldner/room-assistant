#!/bin/bash
set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin;

docker run --ti \
           --privileged \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v ~/.docker:/root/.docker \
           -v "$PWD":/data homeassistant/build-amd64:latest \
           --all \
           --push
