import rclpy
from rclpy.node import Node


class HelloNode(Node):
    def __init__(self):
        super().__init__("hello_node")
        self.get_logger().info("Hello from modern ROS2 workspace!")
        self.create_timer(1.0, self.timer_callback)

    def timer_callback(self):
        self.get_logger().info("ROS2 is working with pixi and uv!")


def main(args=None):
    rclpy.init(args=args)
    node = HelloNode()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()


if __name__ == "__main__":
    main()
