#!/bin/bash -e
set -eu

export TGT=$(mktemp -d)
curl -s -o $TGT/terra.zip https://releases.hashicorp.com/terraform/0.10.4/terraform_0.10.4_linux_amd64.zip
cd $TGT
unzip terra.zip
mv terraform /usr/local/bin/
rm -rf $TGT




