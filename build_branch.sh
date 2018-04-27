#!/bin/bash
set -e

docker run --privileged \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v "$PWD":/docker homeassistant/amd64-builder:latest \
           --test \
           --all
