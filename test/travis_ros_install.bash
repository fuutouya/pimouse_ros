#!/bin/bash -xve

sudo sh -c 'echo 127.0.1.1 travis-job-a32f444a-985b-41af-a41a-a2333cb80e40 >> /etc/hosts'

#required packages
sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

#ros install
cd ..
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_server.git
cd ./ros_setup_scripts_Ubuntu18.04_server
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
#source /opt/ros/indigo/setup.bash
source ~/catkin_ws/devel/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make

# Copyright 2016 Ryuichi Ueda
# Released under the BSD License.
# To make line numbers be identical with the book, this statement is written here. Don't move it to the header.
