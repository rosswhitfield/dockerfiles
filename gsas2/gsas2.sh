docker run -it \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       --hostname=$HOSTNAME \
       -e DISPLAY=unix$DISPLAY \
       gsas2
