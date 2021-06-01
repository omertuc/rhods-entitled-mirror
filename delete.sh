#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

NAME=mymirror

oc delete -n gpu-operator-resources \
    deployment/${NAME} \
    route/${NAME} \
    service/${NAME} \
    pvc/${NAME} \
    serviceaccount/${NAME} \
    securitycontextconstraints.security.openshift.io/${NAME}
