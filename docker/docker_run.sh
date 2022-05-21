#!/bin/bash

sudo docker run --rm -v $PWD:$PWD -w $PWD -v /tmp/.X11-unix:/tmp/.X11-unix --net=host -it ros2-eloquent /bin/bash
