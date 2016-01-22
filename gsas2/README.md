# GSAS-2

To build GSAS-2 in docker:
 1. To build `docker build -t gsas2 .`
 2. To run ```docker run -it \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       --hostname=$HOSTNAME \
       -e DISPLAY=unix$DISPLAY \
       gsas2```
 3. If you can't connect to the X server try `xhost +`
