#!/bin/bash -e
set -eu

curl -s -o terra.zip https://releases.hashicorp.com/terraform/0.10.3/terraform_0.10.3_linux_amd64.zip
unzip terra.zip
mv terraform /usr/local/bin/
rm terra.zip




