#
# Cookbook Name:: d.pi
# Recipe:: garage
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

%{ libicu-dev }.each do |p|
    package p
end


# http://www.airspayce.com/mikem/bcm2835/
# version = 1.50
# sha1 = 4f8c101bee00e9ae8eac86b3826fec35af852297
# http://www.airspayce.com/mikem/bcm2835/bcm2835-1.50.tar.gz
# ./configure ; make ; make install
# WARNING Doxygen not found # documentation engine so no matter


####################################################################################
# FAIL: { nodered npm }.each do |p|

# cd /home/pi/.node-red
# npm install node-dht-sensor
# npm install node-contrib-dht-sensor

# upgrade npm
# sudo npm i -g npm@2.x

# Use   sudo systemctl enable nodered.service  to autostart Node-RED at every boot
# Use   sudo systemctl disable nodered.service to disable autostart on boot
####################################################################################

## one time only remove the default/normal system stuff from raspbian jessie
# %{ nodered node npm nodjs }.each do |p|
#    remove them
# end

# https://github.com/nodesource/distributions/blob/master/README.md
# curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
# sudo apt-get install -y nodejs

# sudo npm install -g --unsafe-perm node-red

# ~/.node-red
# npm install node-dht-sensor node-red-contrib-dht-sensor  node-red-node-ledborg node-red-node-ping  node-red-node-pi-sense-hat  node-red-node-random  node-red-node-smooth  node-red-contrib-play-audio  node-red-contrib-ibm-watson-iot

# waiting for missing types to be registered dht22
# npm install request
