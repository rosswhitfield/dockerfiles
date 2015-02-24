FROM ubuntu:trusty
MAINTAINER Ross Whitfield <whitfieldre@ornl.gov>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install software-properties-common -y
RUN apt-add-repository ppa:mantid/mantid
RUN apt-get update
RUN apt-get install -y git cmake-qt-gui qt4-qmake qt4-dev-tools libqt4-dbg libpoco-dev libboost-all-dev libboost-dbg libnexus0-dev libgoogle-perftools-dev libqwt5-qt4-dev libqwtplot3d-qt4-dev python-qt4-dev libgsl0-dev liboce-visualization-dev libmuparser-dev python-numpy libssl-dev libqscintilla2-dev texlive texlive-latex-extra dvipng libhdf4-dev doxygen python-sphinx python-scipy ipython-qtconsole libhdf5-dev libhdf4-dev libpococrypto11-dbg libpocodata11-dbg libpocofoundation11-dbg libpocomysql11-dbg libpoconet11-dbg libpoconetssl11-dbg libpocoodbc11-dbg libpocosqlite11-dbg libpocoutil11-dbg libpocoxml11-dbg libpocozip11-dbg python-qt4-dbg qt4-default ninja-build libjsoncpp-dev python-dateutil python-sphinx-bootstrap-theme graphviz

RUN cd /root && git clone http://github.com/mantidproject/mantid
RUN mkdir -p /root/mantid/Release
RUN cd /root/mantid/Release && cmake ../Code/Mantid && make -j$(nproc)

CMD ["/root/mantid/Release/bin/MantidPlot"]
