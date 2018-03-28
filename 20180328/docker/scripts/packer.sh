#!/usr/bin/env bash

which wget unzip &>/dev/null || {
  apt-get update
  apt-get install -y wget unzip
}

which packer &>/dev/null || {
  pushd /usr/local/bin
  wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip
  unzip packer_1.2.1_linux_amd64.zip
  chmod +x packer
  popd
}
