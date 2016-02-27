#!/bin/bash

cd $(dirname $0)/2.2

docker build -t iwai/elasticsearch:2.2 .

docker tag $(docker images -q iwai/elasticsearch:2.2) iwai/elasticsearch:2
docker tag $(docker images -q iwai/elasticsearch:2.2) iwai/elasticsearch:latest

docker push iwai/elasticsearch

