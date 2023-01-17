#!/bin/bash

gcloud pubsub subscriptions create gcr-triggers --topic projects/${PROJECT_ID}/topics/gcr

 # Give service account permissions to read from the gcr-triggers subscription
 export SA_EMAIL=$(gcloud iam service-accounts list \
	     --filter="displayName:spinnaker-account" \
	         --format='value(email)')

gcloud beta pubsub subscriptions add-iam-policy-binding gcr-triggers \
    --role roles/pubsub.subscriber --member serviceAccount:$SA_EMAIL
