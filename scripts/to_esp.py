#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
import serial

gLinear_x = 0.0
gAngular_z = 0.0

def cmdvel_to_esp_callback(vel):
    global gLinear_x
    global gAngular_z
    f = 2
    gLinear_x = round(vel.linear.x, f)
    gAngular_z = round(vel.angular.z, f)

def main():
    # rospy.init_node('main', anonymous=True)
    rospy.Subscriber("cmd_vel", Twist, cmdvel_to_esp_callback)

    ser = serial.Serial('/dev/ttyUSB0', 115200, timeout=None)
    
    while not rospy.is_shutdown():
        ser.write(b'Jetson:')
        ser.write(str(gLinear_x).encode())
        ser.write(b',')
        ser.write(str(gAngular_z).encode())
        ser.write(b'\r\n')

if __name__ == '__main__':
    try:
        main()
        rospy.spin()
    except rospy.ROSInterruptException: pass