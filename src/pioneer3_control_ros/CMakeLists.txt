cmake_minimum_required(VERSION 2.8.3)
project(pioneer3_control_ros)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  dynamic_reconfigure
  geometry_msgs
  ##libaria
  nav_msgs
  rosaria
  roscpp
  rospy
  sensor_msgs
  tf
)

add_message_files(
  FILES
  BumperState.msg
)

generate_dynamic_reconfigure_options(cfg/RosAria.cfg)

find_package(Boost REQUIRED COMPONENTS thread)
include_directories(${catkin_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS} )

if(EXISTS "/usr/local/Aria/include/Aria.h")
  add_definitions(-DADEPT_PKG)
  include_directories( /usr/local/Aria/include)
  link_directories(/usr/local/Aria/lib)
endif()

#add_executable(RosAria RosAria.cpp)
#add_dependencies(RosAria rosaria_gencfg)
#add_dependencies(RosAria rosaria_gencpp)

#target_link_libraries(RosAria ${catkin_LIBRARIES} ${Boost_LIBRARIES} Aria pthread dl rt)
#set_target_properties(RosAria PROPERTIES COMPILE_FLAGS "-fPIC")

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES geometry_msgs std_msgs
)
# TODO: fill in what other packages will need to use this package
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
    DEPENDS roscpp nav_msgs geometry_msgs sensor_msgs tf
)
add_executable(test_cmd test_cmd.cpp)
add_dependencies(test_cmd rosaria_gencfg)
add_dependencies(test_cmd rosaria_gencpp)
target_link_libraries(test_cmd ${catkin_LIBRARIES} ${Boost_LIBRARIES} Aria pthread dl rt)

add_executable(robotWander robotWander.cpp)
add_dependencies(robotWander rosaria_gencfg)
add_dependencies(robotWander rosaria_gencpp)
target_link_libraries(robotWander ${catkin_LIBRARIES} ${Boost_LIBRARIES} Aria pthread dl rt)

add_executable(robotDemo robotDemo.cpp)
add_dependencies(robotDemo rosaria_gencfg)
add_dependencies(robotDemo rosaria_gencpp)
target_link_libraries(robotDemo ${catkin_LIBRARIES} ${Boost_LIBRARIES} Aria pthread dl rt)

add_executable(p3_sonar p3_sonar.cpp)
add_dependencies(p3_sonar rosaria_gencfg)
add_dependencies(p3_sonar rosaria_gencpp)
target_link_libraries(p3_sonar ${catkin_LIBRARIES} ${Boost_LIBRARIES} Aria pthread dl rt)


