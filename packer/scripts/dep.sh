#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl

# You can install anything you need here.

apt-get install build-essential git ruby1.9.3 nodejs 
gem install jekyll jekyll-redirect-from rdiscount --no-ri --no-rdoc
