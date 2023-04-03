#!/bin/bash

# dependencies
hash -r
# make python3.6 the default version
# http://ubuntuhandbook.org/index.php/2017/07/install-python-3-6-1-in-ubuntu-16-04-lts/
update-alternatives --install /usr/bin/python3 python3 "/usr/bin/python3.5" 1
update-alternatives --install /usr/bin/python3 python3 "/usr/bin/python3.6" 2
# test the python and pip versions
echo "pip3 --version $(pip3 --version)"
echo "python3 --version $(python3 --version)"

# python dependencies
pip3 install -r main/requirements3.txt
