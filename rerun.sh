#!/bin/bash

docker build . -t asciiblog
docker stop asciiblog
docker image prune -f
docker run --rm -d -p 8080:80 --name asciiblog asciiblog