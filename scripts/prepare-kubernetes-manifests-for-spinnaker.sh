#!/bin/bash

# Create Bucket
export PROJECT_ID=$(gcloud info --format='value(config.project)')
gsutil mb -l us-east1 gs://$PROJECT_ID-kubernetes-manifests

# Enable versioning on the bucket so that you have a history of your manifests
gsutil versioning set on gs://$PROJECT_ID-kubernetes-manifests

# Set the correct project ID in your kubernetes deployment manifests
sed -i s/PROJECT/$PROJECT_ID/g k8s/deployments/*
