#!/bin/bash

# Run Flask app
docker run -e PORT=8080 --rm -p 8080:8080 ${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPO_NAME}/${REPO_NAME}:latest
