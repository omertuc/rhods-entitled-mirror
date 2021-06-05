#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

${SCRIPT_DIR}/ca/gen_ca.sh
${SCRIPT_DIR}/client/gen_client.sh
cd client
${SCRIPT_DIR}/ca/sign.sh ${SCRIPT_DIR}/client/generated_client.csr
rm generated_client.csr
