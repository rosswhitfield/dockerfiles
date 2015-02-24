FROM ubuntu:trusty
MAINTAINER Ross Whitfield <whitfieldre@ornl.gov>

COPY mantid_3.3.0-1_amd64.deb /src/mantid_3.3.0-1_amd64.deb

RUN apt-get update && apt-get upgrade -y
RUN apt-get install software-properties-common gdebi -y
RUN apt-add-repository ppa:mantid/mantid && apt-get update
RUN gdebi --n /src/mantid_3.3.0-1_amd64.deb

CMD ["/opt/Mantid/bin/MantidPlot"]
