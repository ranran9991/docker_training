#!/bin/bash

tail_path="$(pwd | cut -d'/' -f3-)"/'src'
echo $tail_path
echo "Building Image"
docker.exe build . -t src
echo "Running Container"
docker.exe run -it -v $tail_path:/src -p 8888:8888 src