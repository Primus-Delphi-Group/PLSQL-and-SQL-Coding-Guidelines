#!/bin/bash

DATA_DIR="$(cd "$(dirname "${0}")/.." && pwd)"
docker run -v ${DATA_DIR}:/data -p 8000:8000 --rm -it trivadis/mktools bash