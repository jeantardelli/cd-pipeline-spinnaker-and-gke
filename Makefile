install-dependencies:
	bash ./scripts/install-dependencies.sh

create-artifact-registry-repo:
	bash ./scripts/create-artifact-registry-repo.sh

check-artifact-registry-repo-or-create-one:
	bash ./scripts/check-artifact-registry-repo-or-create-one.sh

create-gke-cluster:
	bash ./scripts/create-gke-cluster.sh

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
