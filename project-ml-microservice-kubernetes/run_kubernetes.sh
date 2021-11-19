#!/usr/bin/env bash
dockerpath=ibdiko/idt
# Run the Docker Hub container with kubernetes
#kubectl run container --image=$dockerpath --image-pull-policy="Always"
kubectl create deployment udacityproject --image=$dockerpath



# Step 3:
# List kubernetes pods
kubectl get pods

sleep 5

# Step 4:
# Forward the container port to a host

kubectl port-forward udacityproject-756b6b9dc7-jx7jw 8080:80

