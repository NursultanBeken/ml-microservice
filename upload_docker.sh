#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=nbekenov/app
 
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag app:latest $dockerpath

# Push image to a docker repository
docker image push $dockerpath