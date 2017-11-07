#!/bin/bash
docker build -t build-python .
DOCKER_ID=$(docker run -d build-python)
docker cp ${DOCKER_ID}:/tmp/python-3.6.1.all.deb ~/Downloads/
docker stop ${DOCKER_ID}
docker rm ${DOCKER_ID}
