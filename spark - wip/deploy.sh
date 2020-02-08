#!/bin/bash

set -e

REPO_URI="frser/"
IMAGE_TAG=":2.4.4"

start_path=$(pwd)

cd images/base
DOCKER_IMAGE_VERSIONED="${REPO_URI}spark-base${IMAGE_TAG}"
DOCKER_IMAGE_LATEST="${REPO_URI}spark-base:latest"
docker build -t ${DOCKER_IMAGE_VERSIONED} -t ${DOCKER_IMAGE_LATEST} -t spark-base .
docker push ${DOCKER_IMAGE_VERSIONED}
cd ${start_path}

cd images/master
DOCKER_IMAGE_VERSIONED="${REPO_URI}spark-master${IMAGE_TAG}"
DOCKER_IMAGE_LATEST="${REPO_URI}spark-master:latest"
docker build -t ${DOCKER_IMAGE_VERSIONED} -t ${DOCKER_IMAGE_LATEST} .
docker push ${DOCKER_IMAGE_VERSIONED}
cd ${start_path}

cd images/worker
DOCKER_IMAGE_VERSIONED="${REPO_URI}spark-worker${IMAGE_TAG}"
DOCKER_IMAGE_LATEST="${REPO_URI}spark-worker:latest"
docker build -t ${DOCKER_IMAGE_VERSIONED} -t ${DOCKER_IMAGE_LATEST} .
docker push ${DOCKER_IMAGE_VERSIONED}
cd ${start_path}
