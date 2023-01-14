install-dependencies:
	bash ./scripts/install_dependencies.sh

set-up-artifact-registry:
	bash ./scripts/create_repository.sh

check-artifact-registry-or-create-one:
	bash ./scripts/check_repo_existence_or_create_one.sh

create-gke-cluster:
	bash ./scripts/create_gke_cluster.sh

build-image:
	bash ./scripts/build_docker.sh

push-image:
	bash ./scripts/push_docker_image.sh

test-app:
	bash ./scripts/test_app.sh

app-run-standalone:
	python app.py

app-run-docker:
	bash ./scripts/run_docker.sh
