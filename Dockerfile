FROM registry.access.redhat.com/ubi8/nginx-118:latest

USER root

RUN dnf install -y yum-utils
