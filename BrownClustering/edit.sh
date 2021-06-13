#!/bin/bash

docker rm --force brown_clustering
docker build -t brown_clustering . && docker run --name brown_clustering -it -p 8888:8888 --mount type=bind,source=$PWD/content,target=/content brown_clustering
#docker build -t brown_clustering . && docker run --name brown_clustering -it -p 8888:8888 brown_clustering
