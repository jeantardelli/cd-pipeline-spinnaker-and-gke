#!/bin/bash

# List docker images
docker images

# Run Flask app
docker run -e PORT=${PORT} --rm -p 5000:${PORT} ${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPO_NAME}/${REPO_NAME}:latest
