#!/bin/bash

# List docker images
docker images

# Run Flask app
docker run --rm -p 5001:5000 ${REGION}-docker.pkg.dev/${PROJECT_ID}/${TAG_IMAGE}/${TAG_IMAGE}:latest
