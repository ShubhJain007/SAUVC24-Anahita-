# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "odom_dvl_imu: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(odom_dvl_imu_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" NAME_WE)
add_custom_target(_odom_dvl_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odom_dvl_imu" "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" ""
)

get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" NAME_WE)
add_custom_target(_odom_dvl_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odom_dvl_imu" "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom_dvl_imu
)
_generate_srv_cpp(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom_dvl_imu
)

### Generating Module File
_generate_module_cpp(odom_dvl_imu
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom_dvl_imu
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(odom_dvl_imu_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(odom_dvl_imu_generate_messages odom_dvl_imu_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_cpp _odom_dvl_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_cpp _odom_dvl_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_dvl_imu_gencpp)
add_dependencies(odom_dvl_imu_gencpp odom_dvl_imu_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_dvl_imu_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom_dvl_imu
)
_generate_srv_eus(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom_dvl_imu
)

### Generating Module File
_generate_module_eus(odom_dvl_imu
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom_dvl_imu
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(odom_dvl_imu_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(odom_dvl_imu_generate_messages odom_dvl_imu_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_eus _odom_dvl_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_eus _odom_dvl_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_dvl_imu_geneus)
add_dependencies(odom_dvl_imu_geneus odom_dvl_imu_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_dvl_imu_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom_dvl_imu
)
_generate_srv_lisp(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom_dvl_imu
)

### Generating Module File
_generate_module_lisp(odom_dvl_imu
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom_dvl_imu
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(odom_dvl_imu_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(odom_dvl_imu_generate_messages odom_dvl_imu_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_lisp _odom_dvl_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_lisp _odom_dvl_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_dvl_imu_genlisp)
add_dependencies(odom_dvl_imu_genlisp odom_dvl_imu_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_dvl_imu_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom_dvl_imu
)
_generate_srv_nodejs(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom_dvl_imu
)

### Generating Module File
_generate_module_nodejs(odom_dvl_imu
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom_dvl_imu
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(odom_dvl_imu_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(odom_dvl_imu_generate_messages odom_dvl_imu_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_nodejs _odom_dvl_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_nodejs _odom_dvl_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_dvl_imu_gennodejs)
add_dependencies(odom_dvl_imu_gennodejs odom_dvl_imu_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_dvl_imu_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom_dvl_imu
)
_generate_srv_py(odom_dvl_imu
  "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom_dvl_imu
)

### Generating Module File
_generate_module_py(odom_dvl_imu
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom_dvl_imu
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(odom_dvl_imu_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(odom_dvl_imu_generate_messages odom_dvl_imu_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetWorldXYOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_py _odom_dvl_imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/auviitk/catkin_ws/src/AnahitaPlus/navigation_layer/odom_dvl_imu/srv/SetDepthOffset.srv" NAME_WE)
add_dependencies(odom_dvl_imu_generate_messages_py _odom_dvl_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_dvl_imu_genpy)
add_dependencies(odom_dvl_imu_genpy odom_dvl_imu_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_dvl_imu_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom_dvl_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom_dvl_imu
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(odom_dvl_imu_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(odom_dvl_imu_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(odom_dvl_imu_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom_dvl_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom_dvl_imu
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(odom_dvl_imu_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(odom_dvl_imu_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(odom_dvl_imu_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom_dvl_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom_dvl_imu
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(odom_dvl_imu_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(odom_dvl_imu_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(odom_dvl_imu_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom_dvl_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom_dvl_imu
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(odom_dvl_imu_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(odom_dvl_imu_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(odom_dvl_imu_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom_dvl_imu)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom_dvl_imu\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom_dvl_imu
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(odom_dvl_imu_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(odom_dvl_imu_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(odom_dvl_imu_generate_messages_py sensor_msgs_generate_messages_py)
endif()
