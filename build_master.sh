#!/bin/bash
set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin;

docker run --rm \
           --privileged \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v ~/.docker:/root/.docker \
           -v "$TRAVIS_BUILD_DIR":/data \
           homeassistant/amd64-builder:latest \
           --$1 \
           -t /data
