#!/bin/bash

set -e

# pull the Docker image from Docker hub
docker pull shabarimeda03/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 shabarimeda03/simple-python-flask-app