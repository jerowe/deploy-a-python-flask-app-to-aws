#!/usr/bin/env bash
set -x -e

DOCKER_COMPOSE_PREFIX=$(basename $(pwd))

### Tag the docker images
docker tag ${DOCKER_COMPOSE_PREFIX}_flask-app-server quay.io/jerowe/flask-app-server:latest
docker push quay.io/jerowe/flask-app-server:latest
