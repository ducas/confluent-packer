#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl python-software-properties

wget -qO - http://packages.confluent.io/deb/1.0/archive.key | apt-key add -

sh -c "echo deb [arch=all] http://packages.confluent.io/deb/1.0 stable main >> /etc/apt/sources.list"

apt-get -y update

apt-get install -y confluent-platform-2.10.4
