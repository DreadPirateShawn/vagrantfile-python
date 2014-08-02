#!/usr/bin/env bash

echo "#########"
echo "# apt-get"

apt-get update
apt-get install -y git-core
apt-get install -y ipython python-pip python-pyke python-texttable

