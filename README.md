# dockerfiles

To build mantid docker:
 1. Get the mantid deb from [here](http://download.mantidproject.org).
 2. Run `docker build -t mantid .`
 3. Use the start script `./mantid.sh`
 4. If you can't connect to the X server try `xhost +`
