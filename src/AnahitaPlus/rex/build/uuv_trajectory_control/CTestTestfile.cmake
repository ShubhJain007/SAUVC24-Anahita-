# CMake generated Testfile for 
# Source directory: /home/auviitk/rex/src/uuv_simulator/uuv_control/uuv_trajectory_control
# Build directory: /home/auviitk/rex/build/uuv_trajectory_control
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_uuv_trajectory_control_rostest_test_test_python_api.test "/home/auviitk/rex/build/uuv_trajectory_control/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/auviitk/rex/build/uuv_trajectory_control/test_results/uuv_trajectory_control/rostest-test_test_python_api.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/auviitk/rex/src/uuv_simulator/uuv_control/uuv_trajectory_control --package=uuv_trajectory_control --results-filename test_test_python_api.xml --results-base-dir \"/home/auviitk/rex/build/uuv_trajectory_control/test_results\" /home/auviitk/rex/src/uuv_simulator/uuv_control/uuv_trajectory_control/test/test_python_api.test ")
subdirs("gtest")
