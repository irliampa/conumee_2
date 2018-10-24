FROM bioconductor/devel_core2

RUN apt-get install libz-devel libpcre-devel 

CMD R
