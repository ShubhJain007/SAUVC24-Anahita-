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

echo_and_run cd "/home/auviitk/rex/src/uuv_simulator/uuv_control/uuv_trajectory_control"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/auviitk/rex/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/auviitk/rex/install/lib/python2.7/dist-packages:/home/auviitk/rex/build/uuv_trajectory_control/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/auviitk/rex/build/uuv_trajectory_control" \
    "/usr/bin/python2" \
    "/home/auviitk/rex/src/uuv_simulator/uuv_control/uuv_trajectory_control/setup.py" \
     \
    build --build-base "/home/auviitk/rex/build/uuv_trajectory_control" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/auviitk/rex/install" --install-scripts="/home/auviitk/rex/install/bin"
