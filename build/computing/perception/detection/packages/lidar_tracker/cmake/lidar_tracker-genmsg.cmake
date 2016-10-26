# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lidar_tracker: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilidar_tracker:/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lidar_tracker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg" NAME_WE)
add_custom_target(_lidar_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidar_tracker" "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg" "std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lidar_tracker
  "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_cpp(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lidar_tracker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_cpp _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_gencpp)
add_dependencies(lidar_tracker_gencpp lidar_tracker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lidar_tracker
  "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_eus(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lidar_tracker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_eus _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_geneus)
add_dependencies(lidar_tracker_geneus lidar_tracker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lidar_tracker
  "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_lisp(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lidar_tracker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_lisp _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_genlisp)
add_dependencies(lidar_tracker_genlisp lidar_tracker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lidar_tracker
  "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
)

### Generating Services

### Generating Module File
_generate_module_py(lidar_tracker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lidar_tracker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lidar_tracker_generate_messages lidar_tracker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hj/catkin_ws/src/computing/perception/detection/packages/lidar_tracker/msg/centroids.msg" NAME_WE)
add_dependencies(lidar_tracker_generate_messages_py _lidar_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidar_tracker_genpy)
add_dependencies(lidar_tracker_genpy lidar_tracker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidar_tracker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidar_tracker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(lidar_tracker_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(lidar_tracker_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidar_tracker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(lidar_tracker_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(lidar_tracker_generate_messages_eus geometry_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidar_tracker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(lidar_tracker_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(lidar_tracker_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidar_tracker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(lidar_tracker_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(lidar_tracker_generate_messages_py geometry_msgs_generate_messages_py)
