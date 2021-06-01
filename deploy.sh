#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

oc apply -f ${SCRIPT_DIR}/openshift/templates/mirror.json 
oc new-app rhods-entitled-mirror -p NAME=mymirror -p NAMESPACE=gpu-operator-resources
