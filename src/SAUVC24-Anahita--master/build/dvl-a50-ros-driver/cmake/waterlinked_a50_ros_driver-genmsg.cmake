# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "waterlinked_a50_ros_driver: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iwaterlinked_a50_ros_driver:/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(waterlinked_a50_ros_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" NAME_WE)
add_custom_target(_waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waterlinked_a50_ros_driver" "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" NAME_WE)
add_custom_target(_waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "waterlinked_a50_ros_driver" "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waterlinked_a50_ros_driver
)
_generate_msg_cpp(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waterlinked_a50_ros_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(waterlinked_a50_ros_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waterlinked_a50_ros_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(waterlinked_a50_ros_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(waterlinked_a50_ros_driver_generate_messages waterlinked_a50_ros_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_cpp _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_cpp _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waterlinked_a50_ros_driver_gencpp)
add_dependencies(waterlinked_a50_ros_driver_gencpp waterlinked_a50_ros_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waterlinked_a50_ros_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waterlinked_a50_ros_driver
)
_generate_msg_eus(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waterlinked_a50_ros_driver
)

### Generating Services

### Generating Module File
_generate_module_eus(waterlinked_a50_ros_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waterlinked_a50_ros_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(waterlinked_a50_ros_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(waterlinked_a50_ros_driver_generate_messages waterlinked_a50_ros_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_eus _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_eus _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waterlinked_a50_ros_driver_geneus)
add_dependencies(waterlinked_a50_ros_driver_geneus waterlinked_a50_ros_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waterlinked_a50_ros_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waterlinked_a50_ros_driver
)
_generate_msg_lisp(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waterlinked_a50_ros_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(waterlinked_a50_ros_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waterlinked_a50_ros_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(waterlinked_a50_ros_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(waterlinked_a50_ros_driver_generate_messages waterlinked_a50_ros_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_lisp _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_lisp _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waterlinked_a50_ros_driver_genlisp)
add_dependencies(waterlinked_a50_ros_driver_genlisp waterlinked_a50_ros_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waterlinked_a50_ros_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waterlinked_a50_ros_driver
)
_generate_msg_nodejs(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waterlinked_a50_ros_driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(waterlinked_a50_ros_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waterlinked_a50_ros_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(waterlinked_a50_ros_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(waterlinked_a50_ros_driver_generate_messages waterlinked_a50_ros_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_nodejs _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_nodejs _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waterlinked_a50_ros_driver_gennodejs)
add_dependencies(waterlinked_a50_ros_driver_gennodejs waterlinked_a50_ros_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waterlinked_a50_ros_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waterlinked_a50_ros_driver
)
_generate_msg_py(waterlinked_a50_ros_driver
  "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waterlinked_a50_ros_driver
)

### Generating Services

### Generating Module File
_generate_module_py(waterlinked_a50_ros_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waterlinked_a50_ros_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(waterlinked_a50_ros_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(waterlinked_a50_ros_driver_generate_messages waterlinked_a50_ros_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVL.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_py _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/dvl-a50-ros-driver/msg/DVLBeam.msg" NAME_WE)
add_dependencies(waterlinked_a50_ros_driver_generate_messages_py _waterlinked_a50_ros_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(waterlinked_a50_ros_driver_genpy)
add_dependencies(waterlinked_a50_ros_driver_genpy waterlinked_a50_ros_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS waterlinked_a50_ros_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waterlinked_a50_ros_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/waterlinked_a50_ros_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waterlinked_a50_ros_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/waterlinked_a50_ros_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waterlinked_a50_ros_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/waterlinked_a50_ros_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waterlinked_a50_ros_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/waterlinked_a50_ros_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waterlinked_a50_ros_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waterlinked_a50_ros_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/waterlinked_a50_ros_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(waterlinked_a50_ros_driver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
