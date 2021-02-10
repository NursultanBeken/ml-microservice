#!/usr/bin/env bash

# Build image and add a descriptive tag
docker image build --tag=app .

# List docker images
docker image ls
 
# Run flask app
docker run -it --rm --name myapp -p 8000:80 app