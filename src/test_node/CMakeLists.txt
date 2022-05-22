cmake_minimum_required(VERSION 3.5)
project(test_node_pkg)

if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rclcpp_components REQUIRED)
find_package(std_msgs REQUIRED)
add_executable(test_node src/node.cpp)

ament_target_dependencies(test_node rclcpp rclcpp_components std_msgs)

install(TARGETS
  test_node
  DESTINATION lib/${PROJECT_NAME}
  )

ament_package()
