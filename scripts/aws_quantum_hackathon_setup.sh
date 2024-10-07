#!/bin/bash

# update default packages 
sudo apt update 
sudo apt -y --no-install-recommends install python3-pip python3-virtualenv jupyterhub


# clone appropriate repo
git clone https://github.com/PawseySC/pawsey-aws-config 
# set requirements 
# these are based on having pennylane qiskit qmuvi seaborn matplotlib installed
export qhackreqs=pawsey-aws-config/qhack/python/requirements.txt


# create the users 
create_jupyterhub_users.py 2 $(hostname) > userlist.txt 

# create virtual environment 
python3 -m venv qhack-env
source qhack-env/bin/activate 
pip install -r ${qhacksreq} 
deactivate 

# run "The littlest jupyter hub" script
# the script will setup a jupyter hub with the following 
wget -L https://tljh.jupyter.org/bootstrap.py 
sudo python3 bootstrap.py \
--user-requirements-txt-url ${qhackreqs} \
--show-progress-page \
--admin qhack-admin

# now copy templates to the juptyer up region 
cp -r pawsey-aws-config/qhack/templates #need destination directory