# CMake generated Testfile for 
# Source directory: /home/auviitk/rex/src/uuv_simulation_evaluation/uuv_simulation_wrapper
# Build directory: /home/auviitk/rex/build/uuv_simulation_wrapper
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_uuv_simulation_wrapper_rostest_test_test_run_task.test "/home/auviitk/rex/build/uuv_simulation_wrapper/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/auviitk/rex/build/uuv_simulation_wrapper/test_results/uuv_simulation_wrapper/rostest-test_test_run_task.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/auviitk/rex/src/uuv_simulation_evaluation/uuv_simulation_wrapper --package=uuv_simulation_wrapper --results-filename test_test_run_task.xml --results-base-dir \"/home/auviitk/rex/build/uuv_simulation_wrapper/test_results\" /home/auviitk/rex/src/uuv_simulation_evaluation/uuv_simulation_wrapper/test/test_run_task.test ")
subdirs("gtest")
