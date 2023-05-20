# MSD_cartographer navigation for Exhibitions

## INSTALL & SETUP
1. create ros workspase and install ros-melodic
```
mkdir -p catkin_ws/src
cd !$
git clone https://github.com/tomoswifty/msd_exhibition.git
cd ~/catkin_ws/src/msd_exhibition/install_requires
sudo chmodv +x dep.sh repo.sh
./repo.sh
```

2. install ros
```
cd ~/robotis_tools/
sudo chmodv +x install_ros_melodic.sh
./install_ros_melodic.sh
cd ~/catkin_ws/src/msd_exhibition/install_requires
./depc.sh
```

3. install vnc
```
sudo apt update
sudo apt install -y tigervnc-common tigervnc-standalone-server tigervnc-scraping-server
# パスワードの設定
vncpasswd

# 起動
x0vncserver -display :0 -passwordfile ~/.vnc/passwd
# 別途、X環境を作る場合は、vncserver :1 などにする
```

## USAGE
1. connect wi-fi by cli
```
# アクセスポイントの表示
nmcli device wifi
sudo nmcli device wifi rescan # 再スキャン
# 接続
sudo nmcli device wifi connect [SSID | BSSID] password [password]
# 切断
sudo nmcli radio wifi off
sudo nmcli radio wifi # enable/disableが確認できます。
```

2. access via vnc
```
# 起動
x0vncserver -display :0 -passwordfile ~/.vnc/passwd
```

Connect RPLiDAR S1 to USB port and add authentifications 
`sudo chmod /dev/ttyUSB0`
Next connect to esp32-s3 and add authentifications 
`sudo chmod /dev/ttyUSB1`

```
# brigup robot
roslaunch msd_exhibition msd_bringup.launch
# start carto navigation
roslaunch cartgrapher_navigation cartgrapher_navigation.launch
```