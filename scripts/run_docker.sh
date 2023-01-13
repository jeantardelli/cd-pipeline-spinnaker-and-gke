#!/bin/bash

# List docker images
docker images

# Run Flask app
docker run -p 8080:8080 ${TAG_IMAGE}
