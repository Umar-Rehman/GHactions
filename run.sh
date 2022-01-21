#!/usr/bin/env bash

set -x

echo "Run Eze against Goat"
echo "##############################################"
echo ""
docker pull riversafe/eze-cli:latest
docker run --rm -v $(pwd -W):/data riversafe/eze-cli test --debug