1) get a docker image by building
    sudo docker build -t <image_name> .
    or from docker hub
    sudo docker pull <image_name>
2) run bash script
    sudo ./run_docker.bash
3) attach to the container (as needed)
    sudo docker exec -it bdstuff bash (container name as defined in script)
4) in all terminals use source /opt/ros/noetic/setup.bash as
    the entery script seemed to cause this to crash when graphics were started)
5
