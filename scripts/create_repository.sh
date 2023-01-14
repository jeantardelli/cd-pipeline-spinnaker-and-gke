#!/bin/bash

# Verify if env variable is set
echo ${PROJECT_ID}

# Set project id for the Google Cloud CLI
gcloud config set project ${PROJECT_ID}

# Create the Artifact Registry repo
gcloud artifacts repositories create ${_ARTIFACT_REPO_NAME} \
   --repository-format=docker \
   --location=${LOCATION} \
   --description="Docker repository"
