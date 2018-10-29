FROM bioconductor/devel_core2

RUN apt-get update && apt-get -y upgrade
RUN apt-get install build-essential
RUN apt-get install libpcre3-dev libbz2-dev liblzma-dev

RUN mkdir /home/scripts
ADD dependencies.R /home/scripts/dependencies.R
RUN Rscript /home/scripts/dependencies.R

CMD R
