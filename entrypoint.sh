#!/bin/bash
set -e
docker pull riversafe/eze-cli:latest
chmod -R ugo+rwx .
docker run -t -v ${PWD}:/data riversafe/eze-cli test
