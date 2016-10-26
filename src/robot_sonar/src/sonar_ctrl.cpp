#include <iostream>
#include <sstream>
#include <fstream>
#include <string>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Float32.h>
#include <sensor_msgs/PointCloud.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_datatypes.h>
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Pose.h"
#include "math.h"
#define PI 3.14159265
#include <signal.h>
#include <termios.h>

using namespace std;

static double min_front = 10.0;
static double avoid_front = 0.2;
static double safe_front = 2.0;

static ros::Publisher pub ;
static geometry_msgs::Twist msg;

static double BASE_SPEED = 0.3, MOVE_TIME = 1.0, CLOCK_SPEED = 0.5;

static void sonar_callback(const sensor_msgs::PointCloud::ConstPtr& pointCloud)
{
	int sensors = pointCloud->points.size(); //set the number of sensors on the robot
	double r[16];
	double arg[16];	

	double min_back = 10;
	double min_left = 10;
	double min_right = 10;
	
	int index_front;
	int index_back;
	string turn_left_sensor;
	string turn_right_sensor;
  	int count = 0;
	for(int i=1; i<6; i++){
	r[i] = pow(pointCloud->points[i].x,2) + pow(pointCloud->points[i].y,2);
	arg[i] = atan(pointCloud->points[i].x / pointCloud->points[i].y)* 180 / PI;
		if (r[i] < min_front){
			min_front = r[i];
			index_front=i;
		}
	}
    int angle_front;
    if (index_front < 5){
    angle_front = 270 + index_front * 22.5;
    }
    else if(index_front > 4){
    angle_front = 22.5 + (index_front-4) * 22.5;
    }
    cout<<"Sensors: "<<sensors<<endl;
    cout<<"Front obstacle at: "<<min_front<< "  "<<angle_front<<endl;
	
	if(min_front < safe_front)
	{
	// make the robot stop
	  for (int i = 0; i < 2; i++)
	    {  

	      msg.linear.x = 0;
	      msg.linear.y = 0;
	      msg.linear.z = 0;
	      pub.publish(msg);
	    }
	}
}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "sonar_ctrl");
  ros::NodeHandle nh;
  int count = 0;

  pub = nh.advertise<geometry_msgs::Twist>("RosAria/cmd_vel", 1);

  //double BASE_SPEED = 0.4, MOVE_TIME = 1.0, CLOCK_SPEED = 0.5;
  ros::Rate rate(CLOCK_SPEED);

  // Make the robot stop (robot perhaps has a speed already)
  msg.linear.x = 0;
  msg.linear.y = 0;
  msg.linear.z = 0;
  msg.angular.x = 0;
  msg.angular.y = 0;
  msg.angular.z = 0;
  pub.publish(msg);

  ros::Subscriber sonar_sub = nh.subscribe("/RosAria/sonar", 1, &sonar_callback);

 while(ros::ok() && count<MOVE_TIME/CLOCK_SPEED + 1)
    {
      if (count == 0 || count == 1)
	{
	    msg.linear.x = BASE_SPEED;
        msg.linear.y = 0;
        msg.linear.z = 0;
        msg.angular.x = 0;
        msg.angular.y = 0;
        msg.angular.z = 0;
	    pub.publish(msg);
	}
      ROS_INFO_STREAM("The robot is now moving forward!");
      count++;
      ros::spinOnce();
      rate.sleep();
   }

    ros::spin();
    return 0;
}

