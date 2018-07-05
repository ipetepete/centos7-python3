#!/usr/bin/bash


# first install setuptools for python 2.7 so we can install supervisor
yum install -y python-setuptools
easy_install supervisor

echo "Getting python 3"
yum install -y centos-release-scl
yum install -y rh-python35
yum install -y gcc # required for installing uwsgi

# To enable python3 by default uncomment next two lines
#echo "#!/bin/bash
#source scl_source enable rh-python35" > /etc/profile.d/enablepython35.sh

# Enable python3 in a new shell session
# scl enable rh-python35 bash

# We need python3 in the current session...
source scl_source enable rh-python35
pip3 install uwsgi

echo "Done"
