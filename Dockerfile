FROM python:3.8.16-slim

# Working directory
WORKDIR /app

# Copy source code to working directory
COPY . /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Run app.py at container launch
CMD exec gunicorn --bind :${PORT} --workers 1 --threads 8 app:app
