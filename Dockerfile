FROM registry.access.redhat.com/ubi8/nginx-118:latest

USER root

RUN dnf install -y yum-utils

COPY entitled.pem /etc/pki/entitlement/entitlement.pem
COPY entitled.pem /etc/pki/entitlement/entitlement-key.pem
COPY rhsm.conf /etc/rhsm/rhsm.conf

RUN dnf list kernel-core --showduplicates
