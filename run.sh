#!/bin/bash
export FASTRTPS_DEFAULT_PROFILES_FILE=/home/hirofuji/workbench/ros2/xml/client.xml
source src/install/setup.bash
ros2 launch launch/launch.py
