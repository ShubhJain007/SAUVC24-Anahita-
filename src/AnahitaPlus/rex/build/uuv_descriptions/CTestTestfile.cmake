# CMake generated Testfile for 
# Source directory: /home/auviitk/rex/src/uuv_simulator/uuv_descriptions
# Build directory: /home/auviitk/rex/build/uuv_descriptions
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_uuv_descriptions_rostest_test_test_urdf_files.test "/home/auviitk/rex/build/uuv_descriptions/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/auviitk/rex/build/uuv_descriptions/test_results/uuv_descriptions/rostest-test_test_urdf_files.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/auviitk/rex/src/uuv_simulator/uuv_descriptions --package=uuv_descriptions --results-filename test_test_urdf_files.xml --results-base-dir \"/home/auviitk/rex/build/uuv_descriptions/test_results\" /home/auviitk/rex/src/uuv_simulator/uuv_descriptions/test/test_urdf_files.test ")
subdirs("gtest")
