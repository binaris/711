#!/bin/bash -e
set -eu

export TGT=$(mktemp -d)
curl -s -o $TGT/terra.zip https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip
cd $TGT
unzip terra.zip
mv terraform /usr/local/bin/
rm -rf $TGT




