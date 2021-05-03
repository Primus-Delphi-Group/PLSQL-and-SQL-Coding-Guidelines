#!/bin/bash

DATA_DIR="$(cd "$(dirname "${0}")/.." && pwd)"
GIT_USERNAME="$(git config user.name)"
GIT_EMAIL="$(git config user.email)"
COMMAND="/data/tools/run-in-container/mike.sh '${GIT_USERNAME}' '${GIT_EMAIL}' $1 $2 $3 $4"

docker run -v ${DATA_DIR}:/data -p 8000:8000 --rm -it trivadis/mktools bash -c "${COMMAND}"
