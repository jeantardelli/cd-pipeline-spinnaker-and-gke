#!/bin/bash

# Build Image
docker build --tag=${TAG_IMAGE}:latest .

# List docker images
docker images

# Run Flask app
docker run -p 8080:8080 ${TAG_NAME}
