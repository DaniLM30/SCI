clear all;
close all;
rosshutdown

ROS_MASTER_IP = '192.168.1.48'
ROS_IP = '192.168.56.1'

%rosinit(['http://',ROS_MASTER_IP,':11311'],'NodeHost',ROS_IP)
sim("test_controler_generic.slx")
