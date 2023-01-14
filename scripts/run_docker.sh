#!/bin/bash

# List docker images
docker images

# Run Flask app
docker run --rm -p 5001:5000 ${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPO_NAME}/${REPO_NAME}:latest
