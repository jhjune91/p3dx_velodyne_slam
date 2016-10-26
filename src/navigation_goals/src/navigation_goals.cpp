/*
 * 2016.10.2 Hyunjun Jang
 * The objective of this code is to give multiple navigation goals to move_base
 * by user's terminal input
 * ver. 1.0
*/

#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>\

#include <iostream>
#include <termios.h>
#include <string>
#include <unistd.h>
#include <signal.h>

#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Pose.h"
#include <tf/transform_datatypes.h>

#define PI 3.14159265358979

#define KEYCODE_1 0x31
#define KEYCODE_2 0X32
#define KEYCODE_3 0x33
#define KEYCODE_4 0x34
#define KEYCODE_5 0x35
#define KEYCODE_6 0x36
#define KEYCODE_Q 0X71

static struct termios new1, old;

/* initializes the terminal to new input settings */
void initTermios(int echo)
{
    tcgetattr(0, &old); /* grab old terminal i/o settings */
    new1 = old; /* make new settings same as old settings */
    new1.c_lflag &= ~ICANON; /* disable buffered i/o */
    new1.c_lflag &= echo ? ECHO : ~ECHO; /* set echo mode */
    tcsetattr(0, TCSANOW, &new1); /* use these new terminal i/o settings now */
}

/* Restore old terminal i/o settings */
void resetTermios()
{
    tcsetattr(0, TCSANOW, &old);
}

/* quit the program cleanly and close ros */
void quit()
{
    resetTermios(); /* reset the terminal to old settings */
    ros::shutdown(); /*shutdown ros */
    exit(1); /* exit the system */
}

void inputWaypointList(std::vector<move_base_msgs::MoveBaseGoal>& goalList,double x1,double y1)
{
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose.position.x = x1;
    goal.target_pose.pose.position.y = y1;
    goal.target_pose.pose.orientation.w = 1.0;//always need w.
    goalList.push_back(goal);
}
//vector clear
void VectorClear(std::vector<move_base_msgs::MoveBaseGoal>& goalList)
{
std::vector<move_base_msgs::MoveBaseGoal> temp_obj;
temp_obj.swap(goalList);
}

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv){

   /* initialize the ros node */
  ros::init(argc, argv, "navigation_goals");
  ros::NodeHandle nh;

  //ros::NodeHandle nh2;
  // Create a subscriber object .
  //ros::Subscriber odom_sub = nh2.subscribe("odom", 10, odomCallback);



  //tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  //wait for the action server to come up
  while(!ac.waitForServer(ros::Duration(5.0))){
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  std::vector<move_base_msgs::MoveBaseGoal> goalList; //plan 벡터클래스

  // Add multiple goals to plan of the type move_base_msgs::MoveBaseGoal
  // Then, send it one by one:
  int plan_num = 0;
  double X1,Y1=0.0;


   /* change the terminal input settings */
    initTermios(0);

   /* greet user and display selection options */
        std::cout
                << "*************************************************************" << std::endl
                << "*              P3DX Waypoint Navigation                     *" << std::endl
                << "*                                                           *" << std::endl
                << "*       Welcome to the Waypoint Navigation interface!       *" << std::endl
                << "*                                                           *" << std::endl
                << "*       [1] input x,y points                                *" << std::endl
                << "*       [2] Navigation Start                                *" << std::endl
                << "*       [3] ???                                             *" << std::endl
                << "*       Press [Q] to close the interface                    *" << std::endl
                << "*************************************************************" << std::endl;

        char select,a,b; /* vars to be used in switch statement */

      /* loop to handle user input */
        while(ros::ok()){

            std::cout << "Please select a program to run, or hit q to quit: "<< std::endl; /* prompt user at start of every loop */
            std::cin >> select;	/* use standard input to select program to run */
            switch(select)
            {
                case KEYCODE_1:
                {
                 std::cout << "포인트의수:";
                 std::cin >> plan_num;
                 std::cout << std::endl<<"입력포인트의수:"<<plan_num<<std::endl;
                 for (int i = 0;i<plan_num;i++){
                     std::cout << "포인트입력 x:";
                     std::cin >> X1;
                     std::cout << "포인트입력 y:";
                     std::cin >> Y1;
                     std::cout <<std::endl<< "x=" <<X1 <<","<<"y="<<Y1<<std::endl;
                     inputWaypointList(goalList,X1,Y1);

                 }
                  std::cout << "입력완료,"<<"포인트의수:"<<(int)goalList.size()<<std::endl;
                    break;
                }

                case KEYCODE_2:
                {
                    int count = (int)goalList.size();
                    std::cout << "Navigation Start..."<<std::endl;
                    while (nh.ok()&&(count != 0))
                    {
                      for (std::vector<move_base_msgs::MoveBaseGoal>::iterator it = goalList.begin(); it != goalList.end() && nh.ok(); ++it)
                      {
                        it->target_pose.header.stamp = ros::Time::now();
                        if(count == 0)
                            break;
                        std::cout<<"count:"<<count<<std::endl;
                        ROS_INFO("Sending a goal");
                        ac.sendGoal(*it);

                        bool wait = true;
                        while (nh.ok() && wait)
                        {
                          ac.waitForResult(ros::Duration(3));

                          if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
                          {
                            wait = false;
                            ROS_INFO("reached to the goal!");
                            count--;
                          }
                          else
                            ROS_INFO("The base is still trying to reach the goal.");

                        }
                      }
                    }
                      count=0;
                      ac.cancelAllGoals(); //cancel
                      goalList.clear();
                      std::cout << "waypoints cleared.vector size:"<<(int)goalList.size()<<std::endl;
                      //VectorClear(goalList); //vector clear

                    break;
                }
                case KEYCODE_3:
                {
                    break;
                }
                case KEYCODE_Q: /* quit the interface program */
            quit(); /* reset the terminal, then quit + exit the program */
            return false;
                    break;
                default: /* in case of user not entering selection from list */
                    std::cout << "Please enter a number from the list or Q to quit." << std::endl;
                    break;
            }
        }
        return 1;
}
