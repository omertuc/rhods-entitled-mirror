#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

pushd "${SCRIPT_DIR}"

podman build -f Containerfile.sync . -t quay.io/otuchfel/rhods-mirror-sync:latest
podman build -f Containerfile.serve . -t quay.io/otuchfel/rhods-mirror-serve:latest

podman push quay.io/otuchfel/rhods-mirror-sync:latest
podman push quay.io/otuchfel/rhods-mirror-serve:latest

echo "Done"
