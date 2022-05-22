from launch import LaunchDescription
from launch_ros.actions import Node


def generate_launch_description():
    node_count = 200
    node_list = [
        Node(
            package='test_node_pkg',
            executable='test_node',
            namespace=f'test{i}'
        ) for i in range(node_count)
    ]
    return LaunchDescription(
        node_list
    )
