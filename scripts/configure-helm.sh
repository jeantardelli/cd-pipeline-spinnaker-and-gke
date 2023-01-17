#!/bin/bash

# Grant Helm the cluster-admin role in your cluster
kubectl create clusterrolebinding user-admin-binding \
    --clusterrole=cluster-admin --user=$(gcloud config get-value account)

# Grant Spinnaker the cluster-admin role so it can deploy resources across all namespaces
kubectl create clusterrolebinding --clusterrole=cluster-admin \
    --serviceaccount=default:default spinnaker-admin

# Add the stable charts deployments to Helm's usable repositories (includes Spinnaker)
helm repo add stable https://charts.helm.sh/stable
helm repo update
