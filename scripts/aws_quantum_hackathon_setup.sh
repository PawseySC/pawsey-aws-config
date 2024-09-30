#!/bin/bash

# run "The littlest jupyter hub" script
# the script will setup a jupyter hub with the following 
curl -L https://tljh.jupyter.org/bootstrap.py \
| sudo python3 - 
--user-requirements-txt-url \
--show-progress-page \
