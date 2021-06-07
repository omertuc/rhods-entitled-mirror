#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

oc apply -fhttps://raw.githubusercontent.com/omertuc/openshift-acme/master/deploy/cluster-wide/{clusterrole,serviceaccount,issuer-letsencrypt-live,deployment}.yaml
oc create clusterrolebinding openshift-acme --clusterrole=openshift-acme --serviceaccount="$( oc project -q ):openshift-acme" --dry-run -o yaml | oc apply -f -
