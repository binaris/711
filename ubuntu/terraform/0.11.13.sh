#!/bin/bash -e
set -eu

export TGT=$(mktemp -d)
apt install -y unzip
curl -s -o $TGT/terra.zip https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
cd $TGT
unzip terra.zip
mv terraform /usr/local/bin/
rm -rf $TGT
