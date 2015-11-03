#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl

# You can install anything you need here.

apt-get -y install build-essential git ruby1.9.3 nodejs screen rubygems-integration

sudo gem install jekyll --no-ri --no-rdoc
sudo gem install jekyll-redirect-from --no-ri --no-rdoc
gem install rdiscount --no-ri --no-rdoc
<<<<<<< HEAD
=======

>>>>>>> 691ed1284a14cffcd6c843dd2d3bd288912ba84b
