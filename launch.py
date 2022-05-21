from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    node_count = 200
    node_list = [
        Node(
            package='turtlesim',
            node_executable='turtle_teleop_key',
            node_name=f'turtle_teleop_key{i}'
        ) for i in range(node_count)
    ]
    return LaunchDescription(
        node_list
    )
