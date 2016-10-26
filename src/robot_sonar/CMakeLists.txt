cmake_minimum_required(VERSION 2.8.3)
project(robot_sonar)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  rosaria
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES robot_sonar
#  CATKIN_DEPENDS geometry_msgs nav_msgs rosaria roscpp rospy sensor_msgs std_msgs tf
#  DEPENDS system_lib
)


include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(sonar src/sonar.cpp)
target_link_libraries(sonar ${catkin_LIBRARIES})

add_executable(wander src/wander.cpp)
target_link_libraries(wander ${catkin_LIBRARIES})


add_executable(sonar_ctrl src/sonar_ctrl.cpp)
target_link_libraries(sonar_ctrl ${catkin_LIBRARIES})


