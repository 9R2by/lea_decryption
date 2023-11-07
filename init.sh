#!/bin/bash

./build.sh

rm -rf ./env

#pip install virtualenv <-- instead of this line,
# just install the following package !
#python3-virtualenv or equivalent package needed!

python3 -m venv env
source env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt