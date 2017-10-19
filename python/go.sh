#!/bin/bash
docker build -t build-python .
DOCKER_ID=$(docker run -d build-python)
docker cp ${DOCKER_ID}:/python36.tgz ~/Downloads/
docker stop ${DOCKER_ID}
docker rm ${DOCKER_ID}
