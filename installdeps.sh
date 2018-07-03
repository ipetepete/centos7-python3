#!/usr/bin/bash


echo "Getting python"
yum install -y centos-release-scl
yum install -y rh-python35
scl enable rh-python35 bash


echo "Done"
python3 --version
