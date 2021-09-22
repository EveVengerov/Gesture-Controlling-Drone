#include "client.hpp"

#include "ros/ros.h"
#include <signal.h>
#include <iostream>
#include "std_msgs/String.h"
#include "plutodrone/PlutoMsgAP.h"
#include "plutodrone/PlutoMsg.h"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>

using namespace std;
using namespace cv;



ros::Publisher command_ap_pub;
ros::Publisher command_pub;

cv_bridge::CvImagePtr cv_ptr;
plutodrone::PlutoMsg msg;
std::string mesg;
int c = 0;

socket_communication::Client client("192.168.56.1", 5002);

void drone_msg(std::string control)
{

   if (control == "Left\0")
   {
  msg.rcRoll = 1500;
  msg.rcPitch = 1400;
  msg.rcYaw = 1500;
  msg.rcThrottle = 1500;
  msg.rcAUX1 = 1500;
  msg.rcAUX2 = 1500;
  msg.rcAUX3 = 1500;
  msg.rcAUX4 = 1500;  
    }  
  else  if (control == "Right\0")
   {
  msg.rcRoll = 1500;
  msg.rcPitch = 1600;
  msg.rcYaw = 1500;
  msg.rcThrottle = 1500;
  msg.rcAUX1 = 1500;
  msg.rcAUX2 = 1500;
  msg.rcAUX3 = 1500;
  msg.rcAUX4 = 1500;  
    }
  else  if (control == "Up\0")
   {
  msg.rcRoll = 1500;
  msg.rcPitch = 1500;
  msg.rcYaw = 1500;
  msg.rcThrottle = 1800;
  msg.rcAUX1 = 1500;
  msg.rcAUX2 = 1500;
  msg.rcAUX3 = 1500;
  msg.rcAUX4 = 1500;  
    }   
  else  if (control == "Down\0")
   {
  msg.rcRoll = 1500;
  msg.rcPitch = 1500;
  msg.rcYaw = 1500;
  msg.rcThrottle = 1200;
  msg.rcAUX1 = 1500;
  msg.rcAUX2 = 1500;
  msg.rcAUX3 = 1500;
  msg.rcAUX4 = 1500;  
    }   
  else  if (control == "Stop\0" || control == "Donno\0" || (c!=0 && control == "none\0") )
   {
  msg.rcRoll = 1500;
  msg.rcPitch = 1500;
  msg.rcYaw = 1500;
  msg.rcThrottle = 1550;
  msg.rcAUX1 = 1500;
  msg.rcAUX2 = 1500;
  msg.rcAUX3 = 1500;
  msg.rcAUX4 = 1500;  
    }   
      
  command_pub.publish(msg);
 }
 void drone_activate(bool isactive)
 {
    if (isactive == true)
    {
      msg.rcRoll = 1500;
      msg.rcPitch = 1500;
      msg.rcYaw = 1500;
      msg.rcThrottle = 1000;
      msg.rcAUX1 = 1500;
      msg.rcAUX2 = 1500;
      msg.rcAUX3 = 1500;
      msg.rcAUX4 = 1500;  
     }
    else if (isactive == false)
    {
      msg.rcRoll = 1500;
      msg.rcPitch = 1500;
      msg.rcYaw = 1500;
      msg.rcThrottle = 1500;
      msg.rcAUX1 = 1500;
      msg.rcAUX2 = 1500;
      msg.rcAUX3 = 1500;
      msg.rcAUX4 = 1000;  
     }
      command_pub.publish(msg);
 }


void droneCallback(const ros::TimerEvent&)
{
   std:cout<<"Command Registered:"<<mesg<<std::endl;
   drone_msg(mesg);
}



void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{

 try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }


  try
  { cv::Mat image = cv_ptr->image;
    client.SendImage(image);
    mesg = client.Receive();

    std::cout << "[Server]: " << mesg << std::endl;
    if (c==0)
    {std::cout<<"Activated"<<endl;
    drone_activate(true);
    c++;
    }
    //}else {drone_activate(false);}

    //imshow("view", cv_ptr->image);
    

    waitKey(1);
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
  }


}

void mySigintHandler(int sig)
{
  drone_activate(false);
  close(client.client_);
  std::cout<<"Executed loop2"<<endl;
  ros::shutdown();
}



int main(int argc, char **argv) {
  //Check that connection works
  client.Send("Hello hello!");
  std::string answer = client.Receive();
  std::cout << "[Server]: " << answer << std::endl;

  ros::init(argc, argv, "imagepronode", ros::init_options::NoSigintHandler);

  ros::NodeHandle n;

  //namedWindow("view");

  //startWindowThread();
  image_transport::ImageTransport it(n);


  command_pub = n.advertise<plutodrone::PlutoMsg>("drone_command", 1000);

  image_transport::Subscriber sub = it.subscribe("plutocamera/image_raw", 1, imageCallback);
  signal(SIGINT, mySigintHandler);

  ros::Timer timer = n.createTimer(ros::Duration(1.0),droneCallback);

  //command_ap_pub = n.advertise<plutodrone::PlutoMsgAP>("drone_ap_command", 1000);

  //destroyWindow("view");
  
  ros::spin();
  return 0;

}







