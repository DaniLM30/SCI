clear all;
close all;
rosshutdown

ROS_MASTER_IP = '192.168.8.109'
ROS_IP = '192.168.8.109'

rosinit(['http://',ROS_MASTER_IP,':11311'],'NodeHost',ROS_IP)
sim("test_controler_sugeno.slx")
