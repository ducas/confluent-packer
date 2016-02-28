#!/bin/bash
#
# Setup the the box. This runs as root


apt-get -y update

apt-get -y install curl python-software-properties

wget -qO - http://packages.confluent.io/deb/1.0/archive.key | apt-key add -

add-apt-repository "deb [arch=all] http://packages.confluent.io/deb/1.0 stable main"

apt-get -y update

apt-get install confluent-platform-2.10.4

