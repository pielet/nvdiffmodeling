#!/bin/bash

docker build -f docker/Dockerfile -t diffmod:v1 .
docker run --gpus device=0 -it --rm -v /raid:/raid --ipc=host -it diffmod:v1 bash