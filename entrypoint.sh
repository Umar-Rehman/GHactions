#!/bin/sh
set -e
chmod -R ugo+rwx ./*
docker pull riversafe/eze-cli:latest
docker run -t -v ${PWD}:/data riversafe/eze-cli test
