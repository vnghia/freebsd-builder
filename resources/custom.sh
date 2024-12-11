#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.

sudo pkg install -y git curl zip unzip cmake ninja pkgconf bash python3 nasm gmake postgresql17-client llvm18 ca_root_nss

sudo rm -rf /usr/bin/make
sudo ln -s /usr/local/bin/gmake /usr/bin/make
make --version

python3 --version

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
