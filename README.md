# cd-pipeline-spinnaker-and-gke
Google hands-on lab of Continuous Delivery Pipelines with Spinnaker and Kubernetes Engine

## Env. Variables

To run this repo, it should be defined the following environment variables:

- `PROJECT_ID`
- `LOCATION`
- `REPO_NAME`

A [Cloud Build trigger](https://cloud.google.com/build/docs/automating-builds/create-manage-triggers) should be configured too.

Note: Cloud Build Service Account should have permissions to write on Artifact Registry.

## Running the App

You can run the app in two different modes:

1. Standalon: `python app.py`
2. In Docker: `./run_docker.sh`


## References

[GitOps-style continuous delivery with Cloud Build](https://cloud.google.com/kubernetes-engine/docs/tutorials/gitops-cloud-build)

[Deploying and app in a container image to a GKE cluster](https://cloud.google.com/kubernetes-engine/docs/quickstarts/deploy-app-container-image#python)

[Get Started with Kubernets Python](https://kubernetes.io/blog/2019/07/23/get-started-with-kubernetes-using-python/)

[Continuous Delivery Pipelines with Spinnaker and Kubernetes Engine](https://www.cloudskillsboost.google/focuses/552?locale=en&parent=catalog)
