install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-kubectl-component:
	gcloud components install kubectl

set-up-artifact-registry:
	bash ./scripts/create_repository.sh

build-image:
	bash ./scripts/build_docker.sh

push-image:
	bash ./scripts/push_docker_image.sh

test-app:
	python -m pytest tests/

app-run-standalone:
	python app.py

app-run-docker:
	bash ./scripts/run_docker.sh
