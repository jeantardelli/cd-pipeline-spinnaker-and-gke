#!/bin/bash

# Build Image
docker build --tag=${REGION}-docker.pkg.dev/${PROJECT_ID}/${TAG_IMAGE}/${TAG_IMAGE}:latest .
