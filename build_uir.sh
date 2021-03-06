#!/usr/bin/bash
set -ex

podman build -t local/uir .
podman rm uir_builder  || true
podman run --name uir_builder -v .:/doc:ro,Z local/uir

podman cp uir_builder:/out/thesis-template.pdf ./ВКР_Тарасов_ДЮ.pdf
