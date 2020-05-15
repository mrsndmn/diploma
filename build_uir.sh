#!/usr/bin/bash
set -ex

podman build -t local/uir .
podman rm uir_builder  || true
podman run --name uir_builder local/uir

podman cp uir_builder:/doc/thesis-template.pdf ./Б16-501_Тарасов.pdf
