set -e

#msg() { echo -e "\e[32mINFO [$(date +%F_%H-%M-%S)] ---> $1\e[0m"; }
#yellow() { echo -e "\e[33m$1\e[0m"; }
#err() { echo -e "\e[31mERR [$(date +%F_%H-%M-%S)] ---> $1\e[0m" ; exit 1; }

REQUIRED_VARS=(
  DOCKER_URL
  DOCKER_USERNAME
  DOCKER_PASSWORD
)

if [ -z "$DOCKER_URL" ]; then
  docker login -u DOCKER_USERNAME -p DOCKER_PASSWORD
else
  docker login $DOCKER_URL -u DOCKER_USERNAME -p DOCKER_PASSWORD
fi  
  
