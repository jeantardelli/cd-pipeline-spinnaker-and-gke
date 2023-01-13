install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test-app:
	python -m pytest tests/

app-run-standalone:
	python app.py

build-docker-image:
	bash ./scripts/build_docker.sh

app-run-docker:
	bash ./scripts/run_docker.sh
