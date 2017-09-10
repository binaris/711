#!/bin/bash -e

TGT=$(mktemp -d)
VERSION=$(curl -v https://github.com/hashicorp/terraform/releases/latest 2>&1 | grep "< Location:" | rev | cut -d"v" -f1 | rev | tr -d '[:space:]')
echo Latest available version is $VERSION

CURRENT=$(terraform --version 2>/dev/null || echo "nada")
if echo $CURRENT | cut -dv -f2 | tr -d '[:space:]' | grep -E "^$VERSION$" >/dev/null; then
    echo "You already have the latest version at $(which terraform)."
    exit 0
fi

export URL="https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_darwin_amd64.zip"
echo -n "Downloading $URL..."
status=$(curl -sL -o ${TGT}/terraform.zip --write-out "%{http_code}" $URL 2>/dev/null)
echo " done."

if [[ "$status" != "200" ]]; then
    echo "version not found at $URL"
    exit 1
fi

unzip -q $TGT/terraform.zip -d $TGT
sudo mv $TGT/terraform /usr/local/bin
EXE=$(which terraform || echo -n "/usr/local/bin/terraform")
EXE=/usr/local/bin/terraform
echo "Moved to $EXE"
chmod u+x $EXE

rm -rf $TGT

