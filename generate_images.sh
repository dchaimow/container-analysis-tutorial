#!/bin/bash
# This is the neurodocker script.

set -e

image=repronim/neurodocker:0.7.0

generate_docker() {
    docker run --rm ${image} \
           generate docker \
           --base debian:stretch \
           --pkg-manager apt \
           --fsl version=6.0.4 \
           --miniconda create_env=neuro \
                       conda_install="python=3.9 nipype nilearn"
}

generate_docker > Dockerfile
