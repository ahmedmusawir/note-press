#!/bin/bash

docker build -t moosedev/notepress .
docker push moosedev/notepress

ssh moose@142.93.105.156 << EOF 
docker pull moosedev/notepress:latest
docker stop contact-redux || true
docker rm contact-redux || true
docker rmi moosedev/notepress:current || true
docker tag moosedev/notepress:latest moosedev/notepress:current
docker-compose up
EOF