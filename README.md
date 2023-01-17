# cd-pipeline-spinnaker-and-gke
Google hands-on lab of Continuous Delivery Pipelines with Spinnaker and Kubernetes Engine

[Helm](https://github.com/helm/helm) is a package manager we can use to configure and deploy Kubernetes applications.

## Env. Variables

To run this repo, it should be defined the following environment variables:

- `PROJECT_ID`
- `LOCATION`
- `REPO_NAME`

Run `source ./scripts/set-environment-variables.sh` for this.

A [Cloud Build trigger](https://cloud.google.com/build/docs/automating-builds/create-manage-triggers) should be configured too.
Note: Cloud Build Service Account should have permissions to write on Artifact Registry.


## To test the app image with k8s

To run the app with k8s just run `kubectl apply -f config.yaml` after the image was pushed to the Artifact Registry.

## To run the app with Spinnaker and Helm

It is necessary to configure Spinnaker and Helm:

1. Configure Helm: `make config-helm`
2. Configure Spinnaker: `make config-spinnaker`
3. Deploy Spinnaker chart: `make deploy-spinnaker-chart`


## Running the App

You can run the app in two different modes:

1. Standalon: `python app.py`
2. In Docker: `./run_docker.sh`


## References

[GitOps-style continuous delivery with Cloud Build](https://cloud.google.com/kubernetes-engine/docs/tutorials/gitops-cloud-build)

[Deploying and app in a container image to a GKE cluster](https://cloud.google.com/kubernetes-engine/docs/quickstarts/deploy-app-container-image#python)

[Get Started with Kubernets Python](https://kubernetes.io/blog/2019/07/23/get-started-with-kubernetes-using-python/)

[Continuous Delivery Pipelines with Spinnaker and Kubernetes Engine](https://www.cloudskillsboost.google/focuses/552?locale=en&parent=catalog)
