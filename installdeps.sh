#!/usr/bin/bash

echo "Installing build tools"
yum install -y gcc make wget zlib

echo "Getting python"
wget https://www.python.org/ftp/python/3.5.5/Python-3.5.5.tgz
tar xzf Python-3.5.5.tgz
cd Python-3.5.5

echo "Compiling.."
./configure --enable-optimizations
make altinstall

echo "Linking to 'python3'"
ln -s /usr/local/bin/python3.5 /usr/local/bin/python3

echo "Check version..."

python3 --version

echo "Installing pip3"

curl https://bootstrap.pypa.io/get-pip.py | python3


echo "Cleanup..."
cd ..
rm -fR Python*
yum remove -y gcc make
