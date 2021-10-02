# Gesture-Control
## Getting Started
### Pre-requisites
Follow this [tutorial](http://wiki.ros.org/kinetic/Installation/Ubuntu) on ROS wiki and install necesarry package to use the gesture control feature .
### Installation
```# Navigate to catkin workspace
roscd <WORKSPACE_NAME>/src

# clone repository
git clone https://github.com/EveVengerov/Gesture-Controlling-Drone

# Build the Package
catkin_make 
```
### Run Package
```# pluto node for communication with pluto drone
rosrun plutodrone plutonode

# To get the frame from camera
rosrun pluto_camera_sense plutocamera

# To start streaming camera feed
rosrun pluto_image_sub imagepronode 
```
