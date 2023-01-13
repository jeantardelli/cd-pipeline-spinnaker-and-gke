#!/bin/bash

# Configure the Docker command-line tool to authenticate to Artifact Registry
gcloud auth configure-docker ${REGION}-docker.pkg.dev

# Push the Docker image that you just built to the repository
docker push ${REGION}-docker.pkg.dev/${PROJECT_ID}/${TAG_IMAGE}/${TAG_IMAGE}:latest
