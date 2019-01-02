#!/bin/bash -e
set -eu

curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs
