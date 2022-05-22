#!/bin/bash

for i in $(seq 1 200); do
  echo   "  <node namespace=\"ns${i}\" pkg=\"turtlesim\" exec=\"turtle_teleop_key\" />"
done
