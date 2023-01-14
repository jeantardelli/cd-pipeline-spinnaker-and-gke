#!/bin/bash

kubectl expose deployment ${REPO_NAME}-server --type LoadBalancer --port 80 --target-port 8080
