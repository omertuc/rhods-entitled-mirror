#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

oc process -f ${SCRIPT_DIR}/openshift/templates/mirror.json -p NAME=mymirror -p NAMESPACE=gpu-operator-resources | oc apply -f -
