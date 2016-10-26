#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
//#include <sensor_msgs/PointCloud.h>  //for sonar data
//#include <sensor_msgs/PointCloud2.h>
//#include <sensor_msgs/point_cloud_conversion.h> // can optionally publish sonar as new type pointcloud2

int main(int argc, char** argv){
  ros::init(argc, argv, "robot_tf_publisher");
  ros::NodeHandle n;

  ros::Rate r(100);

  tf::TransformBroadcaster broadcaster;

  while(n.ok()){
    broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.1, 0.0, 0.1)),
        ros::Time::now(),"base_link", "sonar_frame"));
    r.sleep();
  }
}
