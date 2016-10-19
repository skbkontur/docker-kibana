#!/bin/bash

curl -H "Content-Type: application/json" --data '{"docker_tag": "'$VERSION'"}' -X POST https://registry.hub.docker.com/u/skbkontur/kibana/trigger/$TOKEN/
