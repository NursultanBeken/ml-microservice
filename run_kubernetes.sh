#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="nbekenov/app"

# Run the Docker Hub container with kubernetes
kubectl run app --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward app 8000:80
