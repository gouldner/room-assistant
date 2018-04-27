#!/bin/bash
set -e

docker run --privileged \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v "$TRAVIS_BUILD_DIR":/docker homeassistant/amd64-builder:latest \
           --test \
           --all
