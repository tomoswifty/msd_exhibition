#!/bin/bash

# cartographer ros navigation 
# https://qiita.com/MMM-lab/items/14e94f9d41ccca4e1c61

sudo apt install -y ros-melodic-cartographer-ros
sudo apt-get install -y ros-melodic-ddynamic-reconfigure
sudo apt-get install -y ros-melodic-tf2-sensor-msgs
sudo apt-get install -y ros-melodic-move-base
sudo apt-get install -y ros-melodic-gmapping ros-melodic-amcl ros-melodic-map-server
sudo apt-get install -y ros-melodic-dwa-local-planner
sudo apt-get install -y ros-melodic-robot-localization

# ds4drv 
sudo pip install -y ds4drv
sudo apt install -y ros-melodic-teleop-*
# ros joy_node
sudo apt install -y ros-melodic-joy

# serial
pip3 install pyserial