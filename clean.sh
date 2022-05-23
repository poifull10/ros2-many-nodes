#!/bin/bash

export FASTRTPS_DEFAULT_PROFILES_FILE=/home/hirofuji/workbench/ros2/xml/server2.xml
env | grep FAST
ros2 daemon stop
ros2 daemon start
