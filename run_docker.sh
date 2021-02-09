#!/usr/bin/env bash

# Step 1:
# Build image and add a descriptive tag
docker image build --tag=app .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -it --rm --name myapp -p 8000:80 app