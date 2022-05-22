FROM ubuntu:bionic AS ros2-eloquent
  RUN sed -i "s%http://[^ ]\+%http://ftp.riken.jp/Linux/ubuntu/%g" /etc/apt/sources.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      curl gnupg2 lsb-release \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
  RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
  RUN sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu bionic main" > /etc/apt/sources.list.d/ros2-latest.list'
  RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      ros-eloquent-desktop \
      python3-colcon-common-extensions \
      ros-eloquent-rqt* \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

  COPY ./docker/ros_entrypoint.sh /
  RUN chmod +x /ros_entrypoint.sh
  ENTRYPOINT ["/ros_entrypoint.sh"]

FROM ubuntu:focal AS ros2-foxy
  RUN sed -i "s%http://[^ ]\+%http://ftp.riken.jp/Linux/ubuntu/%g" /etc/apt/sources.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      curl gnupg2 lsb-release \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
  RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
  RUN sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list'
  RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      ros-foxy-desktop \
      python3-colcon-common-extensions \
      ros-foxy-rqt* \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
  COPY ./docker/ros_entrypoint.sh /
  RUN chmod +x /ros_entrypoint.sh
  ENTRYPOINT ["/ros_entrypoint.sh"]
