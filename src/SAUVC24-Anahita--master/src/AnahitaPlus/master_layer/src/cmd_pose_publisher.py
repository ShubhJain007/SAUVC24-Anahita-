#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Pose, Quaternion, Point
from nav_msgs.msg import Odometry
import math

current_pose = Pose()
a=0
b=0
c=0
def euler_to_quaternion(roll, pitch, yaw):
    # Convert Euler angles to quaternion
    cy = math.cos(yaw * 0.5)
    sy = math.sin(yaw * 0.5)
    cp = math.cos(pitch * 0.5)
    sp = math.sin(pitch * 0.5)
    cr = math.cos(roll * 0.5)
    sr = math.sin(roll * 0.5)

    q = Quaternion()
    q.w = cy * cp * cr + sy * sp * sr
    q.x = cy * cp * sr - sy * sp * cr
    q.y = sy * cp * sr + cy * sp * cr
    q.z = sy * cp * cr - cy * sp * sr
    return q

def pose_gt_callback(data):
    # Update the current pose based on the received data
    global current_pose
    current_pose = data.pose.pose

def publish_cmd_pose(roll, pitch, yaw, x, y, z):
    # Create a publisher for the '/anahita/cmd_pose' topic with message type Pose
    cmd_pose_publisher = rospy.Publisher('/anahita/cmd_pose', Pose, queue_size=10)

    # Set the publishing rate (e.g., 1 Hz)
    #rate = rospy.Rate(1)
    f=1
    while not rospy.is_shutdown():
        # Convert Euler angles to quaternion
        quaternion = euler_to_quaternion(roll, pitch, yaw)

        # Create a Pose message and set its orientation and position
        pose_msg = Pose()
        pose_msg.orientation = quaternion
	
	if(f==1):
		a=current_pose.position.x + x
		b=current_pose.position.y + y
		c=current_pose.position.z + z
		f=0
        pose_msg.position = Point(a, b, c)

        # Publish the Pose message
        cmd_pose_publisher.publish(pose_msg)

        # Log the published values
        rospy.loginfo("Published quaternion orientation: %s", quaternion)
        rospy.loginfo("Published position: x=%f, y=%f, z=%f", pose_msg.position.x, pose_msg.position.y, pose_msg.position.z)

        # Sleep to maintain the desired publishing rate
        #rate.sleep()

if __name__ == '__main__':
    try:
        # Initialize the ROS node with a unique name
        rospy.init_node('pose_publisher_node', anonymous=True)

        # Subscribe to the '/anahita/pose_gt' topic
        rospy.Subscriber('/anahita/pose_gt', Odometry, pose_gt_callback)

        # Read goal data from the command line
        roll = math.radians(float(raw_input("Enter roll angle (in degrees): ")))
        pitch = math.radians(float(raw_input("Enter pitch angle (in degrees): ")))
        yaw = math.radians(float(raw_input("Enter yaw angle (in degrees): ")))
        x = float(raw_input("Enter x position: "))
        y = float(raw_input("Enter y position: "))
        z = float(raw_input("Enter z position: "))

        # Call the publish_cmd_pose function with the provided values
        publish_cmd_pose(roll, pitch, yaw, x, y, z)

    except rospy.ROSInterruptException:
        pass

