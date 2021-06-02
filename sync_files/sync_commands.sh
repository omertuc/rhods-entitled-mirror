#!/bin/bash

set -euxo pipefail

reposync -p /repo --download-metadata --repoid rhocp-4.5-for-rhel-8-x86_64-rpms
reposync -p /repo --download-metadata --repoid rhocp-4.6-for-rhel-8-x86_64-rpms
reposync -p /repo --download-metadata --repoid rhocp-4.7-for-rhel-8-x86_64-rpms
reposync -p /repo --download-metadata --repoid rhocp-4.8-for-rhel-8-x86_64-rpms
reposync -p /repo --download-metadata --repoid rhel-8-for-x86_64-baseos-rpms
reposync -p /repo --download-metadata --repoid rhel-8-for-x86_64-baseos-eus-rpms
