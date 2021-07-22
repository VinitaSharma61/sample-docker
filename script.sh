#!/usr/bin/env bash
set -e

#msg() { echo -e "\e[32mINFO [$(date +%F_%H-%M-%S)] ---> $1\e[0m"; }
#yellow() { echo -e "\e[33m$1\e[0m"; }
#err() { echo -e "\e[31mERR [$(date +%F_%H-%M-%S)] ---> $1\e[0m" ; exit 1; }

REQUIRED_VARS=(
  DOCKER_URL
  DOCKER_USERNAME
  DOCKER_PASSWORD
)

echo "printing username"
echo $DOCKER_USERNAME

if [ ! -z "$DOCKER_URL" ]; then
  echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
else
  echo $DOCKER_PASSWORD | docker login $DOCKER_URL -u $DOCKER_USERNAME --password-stdin
fi
