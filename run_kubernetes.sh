#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="vincentkip/repoml"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run repoml\
    --image=$dockerpath\
    --port=80 --labels app=repoml
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward repoml 8000:80