#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

rm ${SCRIPT_DIR}/ca/generated*
rm ${SCRIPT_DIR}/client/generated*
