#!/bin/bash
TARGET=ros2-eloquent
sudo docker buildx build --tag $TARGET --target $TARGET .
