FROM ubuntu:14.04
MAINTAINER aqssxlzc@gmail.com
#RUN sed 's@archive.ubuntu.com@mirror.bjtu.edu.cn@' -i /etc/apt/sources.list
RUN apt update
RUN apt install -y r-base
RUN apt-get install -y libssl1.0.0=1.0.1f-1ubuntu2 --force-yes
RUN apt-get install -y libssl-dev
COPY R_script /R_script
WORKDIR /R_script
RUN Rscript packages.r
