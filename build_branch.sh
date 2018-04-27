#!/bin/bash
set -e

docker run --rm \
           --privileged \
           -v ~/.docker:/root/.docker \
           -v "$TRAVIS_BUILD_DIR":/data \
           homeassistant/amd64-builder \
           --test \
           --$1 \
           -t /data
