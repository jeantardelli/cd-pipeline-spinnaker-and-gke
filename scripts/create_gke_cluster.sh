#!/bin/bash

gcloud config set project ${PROJECT_ID}
gcloud container clusters create-auto ${REPO_NAME}-cluster --region=${LOCATION}
