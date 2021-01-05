#!/bin/bash
# This is the neurodocker script.

set -e

image=repronim/neurodocker:0.7.0

generate_docker() {
    docker run --rm ${image} \
           generate docker \
           --base debian:stretch \
           --pkg-manager apt       
}

generate_docker > Dockerfile
