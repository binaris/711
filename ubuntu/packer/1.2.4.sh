#!/bin/bash
set -euo pipefail

export CHECKSUM=258d1baa23498932baede9b40f2eca4ac363b86b32487b36f48f5102630e9fbb

trap 'rm -rf /tmp/packer.zip' EXIT

curl -sL -o /tmp/packer.zip https://releases.hashicorp.com/packer/1.2.4/packer_1.2.4_linux_amd64.zip
sha256sum -c - <<< "$CHECKSUM /tmp/packer.zip"
unzip -d /usr/local/bin /tmp/packer.zip
