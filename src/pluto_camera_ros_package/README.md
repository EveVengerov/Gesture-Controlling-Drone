# pluto_camera_ros_package
This pacakge can be used to stream camera feed of Pluto on ros platfrom for linux 64 bit system. 


## Getting Started 
Use following instructions on how to use this package:

###### Prerequisites
Run [install_required_lib.sh](/install_required_lib.sh) script to install necessary libraries. 

###### Run Package

```
# To get the frame from camera
rosrun pluto_camera_sense plutocamera

# To start streaming camera feed
rosrun pluto_image_sub imagepronode 
