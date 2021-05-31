#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

oc delete -n gpu-operator-resources deployment/mymirror route/mymirror service/mymirror pvc/mymirror
