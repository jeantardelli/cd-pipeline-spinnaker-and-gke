#!/bin/bash

# Build Image
docker build --tag=${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPO_NAME}/${REPO_NAME}:latest .
