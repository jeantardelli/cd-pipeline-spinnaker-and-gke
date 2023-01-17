#!/bin/bash

# Download the 1.14.0 version of spin
curl -LO https://storage.googleapis.com/spinnaker-artifacts/spin/1.14.0/linux/amd64/spin

# Make spin executable
chmod +x spin

./spin application save --application-name app \
                        --owner-email "$(gcloud config get-value core/account)" \
                        --cloud-providers kubernetes \
                        --gate-endpoint http://localhost:8080/gate

export PROJECT_ID=$(gcloud info --format='value(config.project)')
sed s/PROJECT/$PROJECT_ID/g spinnaker/pipeline-deploy.json > pipeline.json
./spin pipeline save --gate-endpoint http://localhost:8080/gate -f pipeline.json

