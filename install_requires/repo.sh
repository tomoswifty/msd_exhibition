#!/bin/bash

# ros install scripts
cd /home/$USER
git clone https://github.com/ROBOTIS-GIT/robotis_tools.git

# cartographer ros navigation 
# https://qiita.com/MMM-lab/items/14e94f9d41ccca4e1c61

cd ~/catkin_ws/src
git clone https://github.com/Andrew-rw/gbot_core.git
git clone https://github.com/Slamtec/rplidar_ros.git

git clone https://github.com/tomoswifty/cartographer_navigation.git
git clone https://github.com/tomoswifty/ira_laser_tools.git

# pip3
sudo apt install python3-pip
