#!/bin/bash

gcloud container clusters create-auto ${REPO_NAME}-cluster --region=${LOCATION}
