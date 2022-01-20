#!/bin/bash
set -e
chmod ugo+rwx .
docker pull riversafe/eze-cli:latest
sudo docker run -t -v ${PWD}:/data riversafe/eze-cli test
