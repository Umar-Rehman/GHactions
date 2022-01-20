#!/bin/bash
set -e
docker pull riversafe/eze-cli:latest
chmod -R ugo+rwx .
sudo docker run -t -v ${PWD}:/data riversafe/eze-cli test
