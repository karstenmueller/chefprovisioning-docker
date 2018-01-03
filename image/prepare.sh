#!/bin/bash

set -ex

apt-get update --quiet
apt-get install --quiet --yes wget ssh git build-essential jq

# ChefDK
wget --quiet --content-disposition "http://packages.chef.io/files/${CHANNEL}/chefdk/${VERSION}/ubuntu/16.04/chefdk_${VERSION}-1_amd64.deb" -O /tmp/chefdk.deb
dpkg -i /tmp/chefdk.deb

# gems
echo 'gem: --no-document' > $HOME/.gemrc
eval $(chef shell-init bash)
chef gem install chef-provisioning-azurerm kitchen-azurerm rubocop bundler

