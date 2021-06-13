#!/bin/sh

docker rm --force lda_clustering
docker build -t lda_clustering . && docker run --name lda_clustering -it -p 8888:8888 lda_clustering
