cmake_minimum_required(VERSION 2.8.3)
project(navigation_goals)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  actionlib
  move_base_msgs
  roscpp
  rospy
  geometry_msgs
  rosaria
  std_msgs
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES navigation_goals
#  CATKIN_DEPENDS actionlib move_base_msgs roscpp
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)


add_executable(navigation_goals src/navigation_goals.cpp)
target_link_libraries(navigation_goals ${catkin_LIBRARIES})
add_dependencies(navigation_goals ${catkin_EXPORTED_TARGETS})

#add_executable(position_adjust src/position_adjust.cpp)
#target_link_libraries(position_adjust ${catkin_LIBRARIES})
#add_dependencies(navigation_goals ${catkin_EXPORTED_TARGETS})
