#!/bin/sh

echo 'Installing sdl and ffmpeg libraries'
echo 'You might need to enter your password'

#copying camera lib to usr/lib
sudo cp ./pluto_camera_sense/lib/libLeweiLib.so /usr/lib

# install dependencies
sudo apt-get update
sudo apt-get install libsdl2-dev -y
sudo apt-get install libavcodec-dev -y
sudo apt-get install libswscale-dev -y
sudo apt-get install libavformat-dev -y
sudo apt-get install libavutil-dev -y
sudo apt-get install libavdevice-dev -y
sudo apt-get install libyaml-cpp-dev -y
sudo apt-get install ros-kinetic-cv-bridge -y

echo 'Installation Done!!'

