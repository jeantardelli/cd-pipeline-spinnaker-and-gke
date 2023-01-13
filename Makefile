install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test-app:
	python -m pytest tests/

app-run-standalone:
	python app.py

app-run-docker:
	bash ./run_docker.sh
