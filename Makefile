install:
	bash ./scripts/install_dependencies.sh

install-kubectl-component:
	gcloud components install kubectl

set-up-artifact-registry:
	bash ./scripts/create_repository.sh

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
