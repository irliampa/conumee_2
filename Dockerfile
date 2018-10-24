FROM bioconductor/devel_core2

RUN apt-get update && apt-get -y upgrade

RUN apt-get install libz-devel libpcre-devel 

RUN mkdir /home/scripts
ADD dependencies.R /home/scripts/dependencies.R
RUN Rscript /home/scripts/dependencies.R

CMD R
