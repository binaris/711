#!/bin/bash
set -eu

curl -s -L -o ./cfssl https://pkg.cfssl.org/R1.2/cfssl_linux-amd64
chmod +x ./cfssl
mv ./cfssl /usr/local/bin/cfssl

curl -s -L -o ./cfssljson https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
chmod +x ./cfssljson
mv ./cfssljson /usr/local/bin/cfssljson
