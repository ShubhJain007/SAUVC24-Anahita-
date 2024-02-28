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

echo_and_run cd "/home/auviitk/rex/src/uuv_simulation_evaluation/uuv_simulation_wrapper"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/auviitk/rex/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/auviitk/rex/install/lib/python2.7/dist-packages:/home/auviitk/rex/build/uuv_simulation_wrapper/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/auviitk/rex/build/uuv_simulation_wrapper" \
    "/usr/bin/python2" \
    "/home/auviitk/rex/src/uuv_simulation_evaluation/uuv_simulation_wrapper/setup.py" \
     \
    build --build-base "/home/auviitk/rex/build/uuv_simulation_wrapper" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/auviitk/rex/install" --install-scripts="/home/auviitk/rex/install/bin"
