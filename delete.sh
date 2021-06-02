#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

NAME=mymirror

# This script intentionally doesn't delete the PVC because
# syncing the repo takes a long time
oc delete -n rhods-mirror \
    deployment/${NAME} \
    route/${NAME} \
    service/${NAME} \
    serviceaccount/${NAME} \
    securitycontextconstraints.security.openshift.io/${NAME}

