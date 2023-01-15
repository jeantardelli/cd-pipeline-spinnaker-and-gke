#!/bin/bash

# Configure the Docker command-line tool to authenticate to Artifact Registry
gcloud auth configure-docker ${LOCATION}-docker.pkg.dev

# Push the Docker image that you just built to the repository
docker push ${LOCATION}-docker.pkg.dev/${PROJECT_ID}/${REPO_NAME}/${REPO_NAME}:latest
