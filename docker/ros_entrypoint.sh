#!/bin/bash
set -e
source "/opt/ros/eloquent/setup.bash"
export ROS_DOMAIN_ID=1
exec "$@"
