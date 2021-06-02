#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

oc process -f ${SCRIPT_DIR}/openshift/templates/mirror.yaml -p NAME=mymirror -p NAMESPACE=rhods-mirror | oc apply -f -
