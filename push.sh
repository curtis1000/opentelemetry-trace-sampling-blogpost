#!/bin/bash

[[ ! -z "${TAG:-}" ]] || {
  echo "Error: TAG is not set."
  exit 1
}

podman push curtis1000/trace-sampling-dummy-server:$TAG
