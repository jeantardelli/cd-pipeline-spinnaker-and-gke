#!/bin/bash

RESULT=`gcloud artifacts repositories describe ${REPO_NAME} --location=${LOCATION} --format="json"`
if [ -z "$RESULT" ]
then
  echo "The error above means there is no Artifact Repository. Let's create one!"
  bash ./scripts/create-artifact-registry-repo.sh
fi
