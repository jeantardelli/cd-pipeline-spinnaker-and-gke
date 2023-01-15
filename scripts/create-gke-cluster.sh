#!/bin/bash

gcloud container clusters create-auto ${REPO_NAME} --region=${LOCATION}
