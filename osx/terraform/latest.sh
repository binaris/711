#!/bin/bash -e

VERSION=$1
if [[ -z "$VERSION" ]]; then
    echo "Usage: $0 <TF_VERSION>"
    exit 1
fi

TGT=$(mktemp -d)

URL=https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_darwin_amd64.zip
echo -n "Downloading $URL..."
status=$(curl -sL -o ${TGT}/terraform.zip --write-out "%{http_code}" $URL 2>/dev/null)
echo " done."

if [[ "$status" != "200" ]]; then
    echo "version not found at $URL"
    exit 1
fi

unzip $TGT/terraform.zip -d $TGT
sudo mv $TGT/terraform /usr/local/bin
EXE=/usr/local/bin/terraform
echo "Moved to $EXE"
chmod u+x $EXE

rm -rf $TGT

