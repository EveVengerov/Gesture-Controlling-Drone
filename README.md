# Gesture-Control
## Description
This project uses hand gesture recognition program in python (PythonGestureHandler) implemented using mediapipe library and openCVpython. Used a Socket connection to communicate between the python node and Ros Image Handler. The image handler node receives the footage from the Wireless Camera Module of the PlutoX drone and also  publishes the required control signals on the drone control topic.
## Getting Started
### Pre-requisites
Install python3 from this [tutorial](https://realpython.com/installing-python/#how-to-install-on-ubuntu-and-linux-mint) or type the following commands on terminal 
```
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt-get update
$ sudo apt-get install python3.8 python3-pip
```
Follow this [tutorial](http://wiki.ros.org/kinetic/Installation/Ubuntu) on ROS wiki and install necesarry package to use the gesture control feature .
### Installation
```# Navigate to catkin workspace
$ roscd <WORKSPACE_NAME>/src

# clone repository
$ git clone https://github.com/EveVengerov/Gesture-Controlling-Drone

# Build the Package
$ catkin_make 
```
### Run Package 
Open nodes in different terminals
```  
# To start the python Gesture-Handler Node using python virtual environment
$ source ~/venv/PythonGestureHandler/bin/activate  
$ python venv/PythonGestureHandler/src/serverimage.py  

# start roscore
$ roscore

# pluto node for communication with pluto drone
$ rosrun plutodrone plutonode

# To get the frame from camera
$ rosrun pluto_camera_sense plutocamera

# To start streaming camera feed
$ rosrun pluto_image_sub imagepronode 

```
----------------OR----------------  
Use roslaunch to execute all ROS nodes at once  

```
$ cd ~/catkin_ws/launch  
$ roslaunch launch_gesture_control.launch
```


## Few gestures implemented for control
<div class="row">
  <div class="column">
    <img align="left" src="/gestures/2021-11-23%20(10).png"  width=360 height=400 \>
  </div>
  <div class="column">
    <img align="right" src="/gestures/2021-11-23%20(12).png" width=360 height=400 \>
  </div>
  <div class="column">
    <img align="left" src="/gestures/2021-11-23%20(13).png"  width=360 height=400 \>
  </div>
  <div class="column">
    <img align="right" src="/gestures/2021-11-23%20(9).png" width=360 height=400  \>
  </div>
</div>  

  
    
     
