#!/bin/bash
set -e

# Custom image name
IMAGE_NAME="nexus.dev.niuchart.com/docker-hosted/easzlab/kubeasz:3.6.8-fork1"

echo "Building and pushing custom image: $IMAGE_NAME"
# Use docker buildx for multi-arch support
docker buildx build --platform linux/amd64,linux/arm64 -t "$IMAGE_NAME" -f Dockerfile.custom --push .

echo "Done."
