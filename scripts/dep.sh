#!/bin/bash
#
# Setup the the box. This runs as root

wget -qO - http://packages.confluent.io/deb/2.0/archive.key | apt-key add -

add-apt-repository "deb http://packages.confluent.io/deb/2.0 stable main"

apt-get -y update

apt-get -y --force-yes install curl openjdk-7-jdk confluent-platform-2.11.7

