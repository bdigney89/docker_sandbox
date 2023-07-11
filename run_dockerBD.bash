# If not working, first do: sudo rm -rf /tmp/.docker.xauth
# It still not working, try running the script as root.
## Build the image first
### docker build -t r2_path_planning .
## then run this script

## bdigney
## for some reason dont use entry point use
## source /opt/ros/noetic/setup.bash
## build image with:  sudo docker build -t image .
## or pull from dockerhub
## run with :sudo ./run_docker.bash
## then attach to container bdstuff
## sudo docker exec -it bdstuff bash
xhost local:root


XAUTH=/tmp/.docker.xauth


docker run -it \
    --name=bdstuff \  ## container name here
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    osrf/ros:noetic-desktop \  ## image name here
    bash

echo "Done."
