#!/bin/bash

# ros install scripts
git clone https://github.com/ROBOTIS-GIT/robotis_tools.git

# cartographer ros navigation 
# https://qiita.com/MMM-lab/items/14e94f9d41ccca4e1c61
sudo apt install ros-melodic-cartographer-ros

cd ~/catkin_ws/src
git clone https://github.com/Andrew-rw/gbot_core.git
git clone https://github.com/TUKUBA-CHALLENGE/cartgrapher_navigation.git
git clone https://github.com/Slamtec/rplidar_ros.git
cd ~/catkin_ws
catkin_make

sudo apt-get install -y ros-melodic-ddynamic-reconfigure
sudo apt-get install -y ros-melodic-tf2-sensor-msgs
sudo apt-get install -y ros-melodic-move-base
sudo apt-get install -y ros-melodic-gmapping ros-melodic-amcl ros-melodic-map-server
sudo apt-get install -y ros-melodic-dwa-local-planner
sudo apt-get install -y ros-melodic-robot-localization