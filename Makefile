install-dependencies:
	bash ./scripts/install-dependencies.sh

create-artifact-registry-repo:
	bash ./scripts/create-artifact-registry-repo.sh

check-artifact-registry-repo-or-create-one:
	bash ./scripts/check-artifact-registry-repo-or-create-one.sh

create-and-configure-service-account:
	bash ./scripts/create-and-configure-service-account.sh

create-gke-cluster:
	bash ./scripts/create-gke-cluster.sh

delete-gke-cluster:
	bash ./scripts/delete-gke-cluster.sh

configure-helm:
	bash ./scripts/configure-helm.sh

configure-spinnaker:
	bash ./scripts/configure-spinnaker.sh

deploy-spinnaker-chart:
	bash ./scripts/deploy-spinnaker-chart.sh

set-default-compute-zone:
	bash ./scripts/set-default-compute-zone.sh

start-kubernetes:
	bash ./scripts/start-kubernetes.sh

prepare-kubernetes-manifests-for-spinnaker:
	bash ./scripts/prepare-kubernetes-manifests-for-spinnaker.sh

create-pubsub-topic:
	bash ./scripts/create-pubsub-topic.sh

create-pubsub-subscription:
	bash ./scripts/create-pubsub-subscription.sh

build-image:
	bash ./scripts/build-image.sh

push-image:
	bash ./scripts/push-image.sh

test-app:
	bash ./scripts/test-app.sh

app-run-standalone:
	python app.py

run-image:
	bash ./scripts/run-image.sh

cluster-spinnaker-helm-setup:
	create-gke-cluster configure-helm configure-spinnaker deploy-spinnaker-chart
