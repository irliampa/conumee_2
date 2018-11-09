FROM bioconductor/release_core2

RUN apt-get update --fix-missing && apt-get -y upgrade && apt-get dist-upgrade
RUN apt-get install build-essential
RUN apt-get install -y libpcre3-dev libbz2-dev liblzma-dev

RUN mkdir /home/scripts
ADD dependencies.R /home/scripts/dependencies.R

WORKDIR /home/scripts/
RUN Rscript /home/scripts/dependencies.R

CMD R
