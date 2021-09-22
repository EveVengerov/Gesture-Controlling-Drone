execute_process(COMMAND "/home/maha/catkin_ws/build/pluto_camera_ros_package/image_common/camera_calibration_parsers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/maha/catkin_ws/build/pluto_camera_ros_package/image_common/camera_calibration_parsers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
