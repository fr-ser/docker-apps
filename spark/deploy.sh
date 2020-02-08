#!/bin/bash

set -e

REPO_URI="frser/"
IMAGE_TAG=":2.4.4"

start_path=$(pwd)

cd images/base
DOCKER_IMAGE="${REPO_URI}spark-base${IMAGE_TAG}"
docker build -t ${DOCKER_IMAGE} -t spark-base .
docker push ${DOCKER_IMAGE}
cd ${start_path}

cd images/master
DOCKER_IMAGE="${REPO_URI}spark-master${IMAGE_TAG}"
docker build -t ${DOCKER_IMAGE} .
docker push ${DOCKER_IMAGE}
cd ${start_path}

cd images/worker
DOCKER_IMAGE="${REPO_URI}spark-worker${IMAGE_TAG}"
docker build -t ${DOCKER_IMAGE} .
docker push ${DOCKER_IMAGE}
cd ${start_path}

cd images/jupyter
DOCKER_IMAGE="${REPO_URI}spark-jupyter${IMAGE_TAG}"
docker build -t ${DOCKER_IMAGE} .
docker push ${DOCKER_IMAGE}
cd ${start_path}
