FROM r-base:3.5.2

RUN apt-get update\
    && apt install -y\ 
        aptitude\
        libcurl4-openssl-dev\
        libxml2-dev\ 
        libssl-dev

COPY setup.r ./

RUN Rscript setup.r

WORKDIR /home/docker