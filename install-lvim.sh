#!/bin/bash

set -e

curl -fLo /tmp/install.sh https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
bash /tmp/install.sh -y --no-install-dependencies
rm /tmp/install.sh
