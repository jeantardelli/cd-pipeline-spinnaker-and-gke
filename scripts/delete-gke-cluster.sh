#!/bin/bash

gcloud container clusters delete ${REPO_NAME} --region=${LOCATION}
