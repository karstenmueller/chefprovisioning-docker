#!/bin/bash

set -ex

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
