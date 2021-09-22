#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/maha/catkin_ws/src/pluto_camera_ros_package/image_common/camera_calibration_parsers"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/maha/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/maha/catkin_ws/install/lib/python2.7/dist-packages:/home/maha/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/maha/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/maha/catkin_ws/src/pluto_camera_ros_package/image_common/camera_calibration_parsers/setup.py" \
     \
    build --build-base "/home/maha/catkin_ws/build/pluto_camera_ros_package/image_common/camera_calibration_parsers" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/maha/catkin_ws/install" --install-scripts="/home/maha/catkin_ws/install/bin"
