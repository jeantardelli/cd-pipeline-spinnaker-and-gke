#!/bin/bash

gcloud iam service-accounts create spinnaker-account \
    --display-name spinnaker-account

export SA_EMAIL=$(gcloud iam service-accounts list \
    --filter="displayName:spinnaker-account" \
    --format='value(email)')

export PROJECT=$(gcloud info --format='value(config.project)')

gcloud projects add-iam-policy-binding $PROJECT \
    --role roles/storage.admin \
    --member serviceAccount:$SA_EMAIL

gcloud iam service-accounts keys create spinnaker-sa.json \
     --iam-account $SA_EMAIL
