#!/bin/bash -e

curl -s -o terra.zip https://releases.hashicorp.com/terraform/0.10.2/terraform_0.10.2_linux_amd64.zip
unzip terra.zip
mv terraform /usr/local/bin/
rm terra.zip




