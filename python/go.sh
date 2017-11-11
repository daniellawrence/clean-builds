#!/bin/bash
docker build -t build-python .
DOCKER_ID=$(docker run -d build-python)
docker cp ${DOCKER_ID}:/tmp/DSLpython36_3.6.3_all.deb ~/Downloads/
docker stop ${DOCKER_ID}
docker rm ${DOCKER_ID}
