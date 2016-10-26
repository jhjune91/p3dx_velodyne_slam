/*
Hyunjun 
*/
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


#define KEYCODE_R 0x43
#define KEYCODE_L 0x44
#define KEYCODE_U 0x41
#define KEYCODE_D 0x42
#define KEYCODE_Q 0x71
#define KEYCODE_SPACE 0x20


using geometry_msgs::Twist;
using namespace std;

static double min_front = 10;
static double safe_front = 0.15;

static ros::Publisher pub ;
static geometry_msgs::Twist msg;
//Subscriber


class TeleopRosAria
{
  public:
    TeleopRosAria();
    void keyLoop();
  private:
    ros::NodeHandle nh_;
    double linear_, angular_, l_scale_, a_scale_;
    ros::Publisher twist_pub_;
};
TeleopRosAria::TeleopRosAria():
  linear_(0),
  angular_(0),
  l_scale_(2.0),
  a_scale_(2.0)
{
  nh_.param("scale_angular", a_scale_, a_scale_);
  nh_.param("scale_linear", l_scale_, l_scale_);
  twist_pub_ = nh_.advertise<geometry_msgs::Twist>("RosAria/cmd_vel", 1);
}
int kfd = 0;
struct termios cooked, raw;
void quit(int sig)
{
  tcsetattr(kfd, TCSANOW, &cooked);
  ros::shutdown();
  exit(0);
}

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

	for(int i=9; i<sensors-2; i++){
	r[i] = pow(pointCloud->points[i].x,2) + pow(pointCloud->points[i].y,2);
	arg[i] = atan(pointCloud->points[i].x / pointCloud->points[i].y)* 180 / PI;
		if (r[i] < min_back){
			min_back = r[i];
			index_back=i;
		}
	}

	int angle_back;
	if (index_back > 11){
	angle_back = 180 + (-index_back + 15) * 22.5;
	}
	else if(index_back < 12){
	angle_back = 22.5 + (index_back - 5) * 22.5 ;
	}

	double temp[2];
	temp[0]=  pow(pointCloud->points[0].x,2) + pow(pointCloud->points[0].y,2);//왼쪽1
	temp[1]=  pow(pointCloud->points[8].x,2) + pow(pointCloud->points[8].y,2);//오른쪽2 
	 
	if (temp[0] > temp[1]){
	min_left = temp[1];
	turn_left_sensor = "right";
	}
	else{
	min_left = temp[0];
	turn_left_sensor = "left";
	}

	temp[0]=  pow(pointCloud->points[7].x,2) + pow(pointCloud->points[7].y,2);//오른쪽1
	temp[1]=  pow(pointCloud->points[15].x,2) + pow(pointCloud->points[15].y,2);//왼쪽2
	 
	if (temp[0] > temp[1]){
	min_right = temp[1];
	turn_right_sensor = "left";
	}
	else{
	min_right = temp[0];
	turn_right_sensor = "right";
	}



	cout<<"Sensors: "<<sensors<<endl;
	cout<<"Front obstacle at: "<<min_front<< "  "<<angle_front<<endl;
	cout<<"Back obstacle at: "<<min_back<< "  "<<angle_back<<endl;
	cout<< "Left obstacle at: "<<min_left<<"  sensor: "<<turn_left_sensor<<endl;   
	cout<< "Right obstacle at: "<<min_right<< "  sensor: "<<turn_right_sensor<<endl;

    if(min_front < safe_front){
    cout<<"warning!! "<<sensors<<endl;
    // Make the robot stop (robot perhaps has a speed already)
    msg.linear.x = 0;
    msg.linear.y = 0;
    msg.linear.z = 0;
    msg.angular.x = 0;
    msg.angular.y = 0;
    msg.angular.z = 0;
    pub.publish(msg);
    }
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "sonar");

    ros::NodeHandle nh;
    pub = nh.advertise<geometry_msgs::Twist>("RosAria/cmd_vel", 1);
    ros::Subscriber sonar_sub = nh.subscribe("/RosAria/sonar", 1, &sonar_callback);
    //TeleopRosAria teleop_RosAria;
    //teleop_RosAria.keyLoop();
    signal(SIGINT,quit);
    //Publisher
    //cmd_vel_pub_ = getNodeHandle().advertise<geometry_msgs::Twist>("/cmd_vel", 10)
    //ros::Publisher twist_pub_;


    ros::spin();

    return 0;
}


void TeleopRosAria::keyLoop()
{
  char c;
  bool dirty=false;
  // get the console in raw mode
  tcgetattr(kfd, &cooked);
  memcpy(&raw, &cooked, sizeof(struct termios));
  raw.c_lflag &=~ (ICANON | ECHO);
  // Setting a new line, then end of file
  raw.c_cc[VEOL] = 1;
  raw.c_cc[VEOF] = 2;
  tcsetattr(kfd, TCSANOW, &raw);
  //puts("Reading from keyboard");
  //puts("---------------------------");
  //puts("Use arrow keys to move the robot.");
  //puts("Press the space bar to stop the robot.");
  //puts("Press q to stop the program");
  for(;;)
  {
    // get the next event from the keyboard
    if(read(kfd, &c, 1) < 0)
	  {
  	  perror("read():");
  	  exit(-1);
	  }
    linear_=angular_=0;
    ROS_DEBUG("value: 0x%02X\n", c);
    switch(c)
	  {
    	case KEYCODE_L:
    	  ROS_DEBUG("LEFT");
    	  angular_ = 0.1;
    	  linear_ = 0;
    	  dirty = true;
    	  break;
    	case KEYCODE_R:
    	  ROS_DEBUG("RIGHT");
    	  angular_ = -0.1;
    	  linear_ = 0;
    	  dirty = true;
    	  break;
    	case KEYCODE_U:
    	  ROS_DEBUG("UP");
    	  linear_ = 0.1;
    	  angular_ = 0;
    	  dirty = true;
    	  break;
    	case KEYCODE_D:
    	  ROS_DEBUG("DOWN");
    	  linear_ = -0.1;
    	  angular_ = 0;
    	  dirty = true;
    	  break;
    	case KEYCODE_SPACE:
    	  ROS_DEBUG("STOP");
    	  linear_ = 0;
    	  angular_ = 0;
    	  dirty = true;
    	  break;
      case KEYCODE_Q:
        ROS_DEBUG("QUIT");
        ROS_INFO_STREAM("You quit the teleop successfully");
        return;
        break;
  	}
    geometry_msgs::Twist twist;
    twist.angular.z = a_scale_*angular_;
    twist.linear.x = l_scale_*linear_;
    if(dirty ==true)
  	{
  	  twist_pub_.publish(twist);
  	  dirty=false;
  	}
  }
  return;
}
