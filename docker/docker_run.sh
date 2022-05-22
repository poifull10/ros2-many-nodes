#!/bin/bash
TARGET=ros2-$1
sudo docker run --rm -v $PWD:$PWD -w $PWD --env ROS_DISTRO=$1 -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev:/dev --net=host --privileged -it $TARGET /bin/bash
