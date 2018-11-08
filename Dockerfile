FROM bioconductor/release_core2

RUN apt-get update --fix-missing && apt-get -y upgrade && apt-get dist-upgrade
RUN apt-get install build-essential
RUN apt-get install -y libpcre3-dev libbz2-dev liblzma-dev

RUN mkdir /home/libraries

RUN wget http://launchpadlibrarian.net/247707088/libmpfr4_3.1.4-1_amd64.deb -O /home/libraries/libmpfr4_3.1.4-1_amd64.deb 
RUN dpkg -i /home/libraries/libmpfr4_3.1.4-1_amd64.deb

RUN wget http://launchpadlibrarian.net/253728399/cpp-4.9_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/cpp-4.9_4.9.3-13ubuntu2_amd64.deb 
RUN dpkg -i /home/libraries/cpp-4.9_4.9.3-13ubuntu2_amd64.deb

RUN wget http://launchpadlibrarian.net/253728314/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb 
RUN dpkg -i home/libraries/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb 

RUN wget http://launchpadlibrarian.net/253728424/libasan1_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/libasan1_4.9.3-13ubuntu2_amd64.deb 
RUN dpkg -i /home/libraries/libasan1_4.9.3-13ubuntu2_amd64.deb

RUN wget http://launchpadlibrarian.net/253728426/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb 
RUN dpkg -i /home/libraries/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb


RUN wget http://launchpadlibrarian.net/253728404/gcc-4.9_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/gcc-4.9_4.9.3-13ubuntu2_amd64.deb 
RUN dpkg -i /home/libraries/gcc-4.9_4.9.3-13ubuntu2_amd64.deb

#RUN wget http://launchpadlibrarian.net/253728432/libstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/ibstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb
#RUN dpkg -i /home/libraries/ibstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb 

#RUN wget http://launchpadlibrarian.net/253728401/g++-4.9_4.9.3-13ubuntu2_amd64.deb -O /home/libraries/g++-4.9_4.9.3-13ubuntu2_amd64.deb#RUN dpkg -i /home/libraries/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb \
#RUN dpkg -i /home/libraries/g++-4.9_4.9.3-13ubuntu2_amd64.deb#RUN dpkg -i /home/libraries/gcc-4.9

RUN mkdir /home/scripts
ADD dependencies.R /home/scripts/dependencies.R

WORKDIR /home/scripts/
RUN Rscript /home/scripts/dependencies.R

CMD R
