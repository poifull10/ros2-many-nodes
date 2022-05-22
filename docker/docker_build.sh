#!/bin/bash
TARGET=ros2-$1
sudo docker buildx build --tag $TARGET --target $TARGET .
