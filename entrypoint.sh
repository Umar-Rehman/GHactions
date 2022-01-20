#!/bin/bash
set -e
docker pull riversafe/eze-cli:latest
docker run -t -v ${PWD}:/data riversafe/eze-cli test
