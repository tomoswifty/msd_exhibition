# MSD_cartographer navigation for Exhibitions

## install 
1. create ros workspase and install ros-melodic
```
mkdir -p catkin_ws/src
cd !$
git clone https://github.com/tomoswifty/msd_exhibition.git
cd 
cd robotis_tools/
sudo chmodv +x install_ros_melodic.sh
./install_ros_melodic.sh
```
2. install ros-cartographer package
```
cd catkin_ws/src/msd_exhibition/install_requires
sudo chmodv +x dep.sh
./depc.sh
```

## usage
connect RPLiDAR S1 to USB port and add authentifications 
`sudo chmod /dev/ttyUSB0`

Next connect to esp32-s3 and add authentifications 
`sudo chmod /dev/ttyUSB1`

```
# brigup robot
roslaunch msd_exhibition msd_bringup.launch
# start carto navigation
roslaunch cartgrapher_navigation cartgrapher_navigation.launch
```