FROM bioconductor/devel_core2

RUN apt-get update --fix-missing && apt-get -y upgrade && apt-get dist-upgrade
RUN apt-get install build-essential
RUN apt-get install -y libpcre3-dev libbz2-dev liblzma-dev

RUN mkdir /home/gcc-4.9-deb && cd /home/gcc-4.9-deb \
    wget http://launchpadlibrarian.net/247707088/libmpfr4_3.1.4-1_amd64.deb -O /home/gcc-4.9-deb/libmpfr4_3.1.4-1_amd64.deb \
    wget http://launchpadlibrarian.net/253728424/libasan1_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/libasan1_4.9.3-13ubuntu2_amd64.deb \
    wget http://launchpadlibrarian.net/253728426/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb \
    wget http://launchpadlibrarian.net/253728314/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb \
    wget http://launchpadlibrarian.net/253728399/cpp-4.9_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/cpp-4.9_4.9.3-13ubuntu2_amd64.deb \
    wget http://launchpadlibrarian.net/253728404/gcc-4.9_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/gcc-4.9_4.9.3-13ubuntu2_amd64.deb \
    wget http://launchpadlibrarian.net/253728432/libstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/ibstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb\
    wget http://launchpadlibrarian.net/253728401/g++-4.9_4.9.3-13ubuntu2_amd64.deb -O /home/gcc-4.9-deb/g++-4.9_4.9.3-13ubuntu2_amd64.deb
#RUN dpkg -i /home/gcc-4.9-deb/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/libmpfr4_3.1.4-1_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/libasan1_4.9.3-13ubuntu2_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/cpp-4.9_4.9.3-13ubuntu2_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/gcc-4.9_4.9.3-13ubuntu2_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/libstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb \
#    dpkg -i /home/gcc-4.9-deb/g++-4.9_4.9.3-13ubuntu2_amd64.deb

RUN mkdir /home/scripts
ADD dependencies.R /home/scripts/dependencies.R

WORKDIR /home/scripts/

CMD R
