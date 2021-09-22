//
// Created by vedanshi on 26/4/19.
//

#define OPENPOSE_FLAGS_DISABLE_PRODUCER
#define OPENPOSE_FLAGS_DISABLE_DISPLAY

#include "ros/ros.h"
#include "pluto_camera_sense/liblewei.h"
#include <iostream>
#include "std_msgs/String.h"
#include <image_transport/image_transport.h>
#include <camera_info_manager/camera_info_manager.h>
#include <sensor_msgs/image_encodings.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

extern "C" {
#include "libavcodec/avcodec.h"
#include "libswscale/swscale.h"
#include "libavutil/pixfmt.h"
}


using namespace std;

const int FRAME_MSG_QUEUE_SIZE = 1;

ros::Publisher chatter_pub;

image_transport::CameraPublisher pub;


boost::shared_ptr<camera_info_manager::CameraInfoManager> cinfo_;


string camera_info_url_;

AVFrame *pVideoFrame;
AVCodec *pdecode;
AVCodecContext *pCodecCtxc;


void read_buffer(void* lpParam, lewei_video_frame *pFrame)
{
	int ret = 0;
	int got_picture = 0;

	if (pFrame->size <= 0)
	{
	   video_free_frame_ram(pFrame);
	   return;
	}

	if (!pdecode) {

			avcodec_register_all();

			pdecode = avcodec_find_decoder(AV_CODEC_ID_H264);

			pCodecCtxc = avcodec_alloc_context3(pdecode);
			pCodecCtxc->bit_rate = 125000;
			pCodecCtxc->width = 1280;
			pCodecCtxc->height = 720;

			if (!pdecode) {
					cout << "no h264 decoder found" << endl;
			}

			if (avcodec_open2(pCodecCtxc, pdecode, nullptr) < 0) {
					cout << "could not open codec" << endl;
					return;
			}

	}

	if (!pVideoFrame)
		 pVideoFrame = av_frame_alloc();

	AVPacket pkt;
	av_init_packet(&pkt);
	pkt.data = pFrame->buf;
	pkt.size = pFrame->size;
	pkt.flags =pFrame->iFrame;

	ret = avcodec_decode_video2(pCodecCtxc, pVideoFrame, &got_picture, &pkt);
	if (ret < 0) {
			printf("decode error.\n");
			return;
	}


	if(got_picture) {

		sensor_msgs::Image output_image;

        output_image.header.stamp     = ros::Time::now();
        output_image.height = pCodecCtxc->height;
        output_image.width  = pCodecCtxc->width;
        output_image.encoding         = "rgb8";
        output_image.is_bigendian     = false;
        output_image.step             = 3 * pCodecCtxc->height;


    int width = pVideoFrame->width;
    int height = pVideoFrame->height;


    cv::Mat image = cv::Mat(height, width, CV_8UC3);

    int cvLinesizes[1];
    cvLinesizes[0] = image.step1();
 
    // Convert the colour format and write directly to the opencv matrix
    SwsContext* conversion = sws_getContext(width, height, (AVPixelFormat) pVideoFrame->format, width, height, AV_PIX_FMT_BGR24, SWS_FAST_BILINEAR, NULL, NULL, NULL);
    sws_scale(conversion, pVideoFrame->data, pVideoFrame->linesize, 0, height, &image.data, cvLinesizes);
    sws_freeContext(conversion);


    if (!cinfo_->isCalibrated())
    {
      cinfo_->setCameraName("plutocamera");
      sensor_msgs::CameraInfo camera_info;
      camera_info.width = width;
      camera_info.height = height;
      cinfo_->setCameraInfo(camera_info);
    }


    sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
    sensor_msgs::CameraInfoPtr ci(new sensor_msgs::CameraInfo(cinfo_->getCameraInfo()));



	pub.publish(msg,ci);
    ros::spinOnce();
	

	}

	video_free_frame_ram(pFrame);

}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "plutocamera");

  ros::NodeHandle n;


  image_transport::ImageTransport it(n);

  pub = it.advertiseCamera("plutocamera/image_raw", 1);


  n.param("camera_info_url", camera_info_url_, std::string(""));
  cinfo_.reset(new camera_info_manager::CameraInfoManager(n, "plutocamera", camera_info_url_));


  cout << "Ready to Provide ImageData Service" << endl;

  lewei_initialize_stream();

  lewei_set_HDflag(false);

  long ret = lewei_start_stream(nullptr, read_buffer);

  pthread_join(ret, NULL);

  return 0;
}
