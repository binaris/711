#!/bin/bash -e
set -eu

# Install Go under /usr/local.
curl -sL https://redirector.gvt1.com/edgedl/go/go1.9.2.linux-amd64.tar.gz | tar -C /usr/local/ -xzf -
