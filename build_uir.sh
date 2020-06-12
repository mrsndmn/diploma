#!/usr/bin/bash
set -ex

podman build -t local/uir .
podman rm uir_builder  || true
podman run --name uir_builder -v .:/doc:ro,Z local/uir

podman cp uir_builder:/out/thesis-template.pdf ./Б16-501_ТарасовДЮ_ВКР.pdf
