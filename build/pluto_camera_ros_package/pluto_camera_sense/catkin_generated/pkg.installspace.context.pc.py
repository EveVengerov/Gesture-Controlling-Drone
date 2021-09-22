# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;std_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpluto_camera_sense;-limage_transport;-lcv_bridge".split(';') if "-lpluto_camera_sense;-limage_transport;-lcv_bridge" != "" else []
PROJECT_NAME = "pluto_camera_sense"
PROJECT_SPACE_DIR = "/home/maha/catkin_ws/install"
PROJECT_VERSION = "1.0.1"
