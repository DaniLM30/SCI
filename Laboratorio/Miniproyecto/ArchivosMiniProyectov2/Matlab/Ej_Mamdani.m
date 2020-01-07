clear all;
close all;
rosshutdown

ROS_MASTER_IP = '192.168.1.26'
ROS_IP = '192.168.56.1'

%rosinit(['http://',ROS_MASTER_IP,':11311'],'NodeHost',ROS_IP)
sim("cont_mamdani.slx")
