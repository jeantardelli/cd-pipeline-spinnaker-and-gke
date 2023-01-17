# This script should be executed using the source from the terminal

export SA_EMAIL=$(gcloud iam service-accounts list \
    --filter="displayName:spinnaker-account" \
    --format='value(email)')

export PROJECT_ID=$(gcloud info --format='value(config.project)')

export LOCATION=europe-west1

export REPO_NAME=$(basename `git rev-parse --show-toplevel`)
