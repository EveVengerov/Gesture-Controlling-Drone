# Gesture-Control
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
# start roscore
$ roscore

# pluto node for communication with pluto drone
$ rosrun plutodrone plutonode

# To get the frame from camera
$ rosrun pluto_camera_sense plutocamera

# To start the Python Node
$ python3 serverimage.py

# To start streaming camera feed
$ rosrun pluto_image_sub imagepronode 

```
