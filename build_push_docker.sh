#!/usr/bin/env bash

# Step 1:
# Build image and add a descriptive tag
docker build -t nextjs .

# Step 2: 
# List docker images
docker image ls

# Step 3:
# Retrieve an authentication token 
# and authenticate Docker client to registry
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/y5l2b5h6

# Step 4:  
# tag
docker tag nextjs public.ecr.aws/y5l2b5h6/nextjs:green

# Step 5:
# Push image to a AWS repository
docker push public.ecr.aws/y5l2b5h6/nextjs:green