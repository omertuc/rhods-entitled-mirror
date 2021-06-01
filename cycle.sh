#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

cd ${SCRIPT_DIR}
./build.sh && ./upload.sh && ./delete.sh ; ./deploy.sh
