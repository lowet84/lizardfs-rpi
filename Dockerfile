FROM armv7/armhf-ubuntu:xenial

#RUN apt-get update && apt-get install -y wget
#RUN wget -O -  | apt-key add -
#RUN gpg --keyserver pgpkeys.mit.edu --recv-key  8B48AD6246925553      
#RUN gpg -a --export 8B48AD6246925553 | sudo apt-key add -
#RUN gpg --keyserver pgpkeys.mit.edu --recv-key  7638D0442B90D010
#RUN gpg -a --export 7638D0442B90D010 | sudo apt-key add -
#RUN gpg --keyserver pgpkeys.mit.edu --recv-key  CBF8D6FD518E17E1
#RUN gpg -a --export CBF8D6FD518E17E1 | sudo apt-key add -

#RUN echo "deb http://ftp.debian.org/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list
#RUN echo "deb http://ftp.debian.org/debian jessie main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y lizardfs-master lizardfs-chunkserver lizardfs-client lizardfs-adm lizardfs-cgi lizardfs-cgiserv 
#RUN apt-get install -y lizardfs

RUN apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

EXPOSE 9419 9420 9421 9425
ADD files/lizardfs-master /etc/default/lizardfs-master
ADD files/mfsexports.cfg /etc/lizardfs/mfsexports.cfg
ADD files/mfsmaster.cfg /etc/lizardfs/mfsmaster.cfg
ADD files/mfsmaster.cfg.slave /etc/lizardfs/mfsmaster.cfg.slave
ADD files/lizardfs-chunkserver /etc/default/lizardfs-chunkserver
ADD files/mfshdd.cfg /etc/lizardfs/mfshdd.cfg
#ADD files/mfsgoals.cfg /etc/lizardfs/mfsgoals.cfg
ADD files/mfschunkserver.cfg /etc/lizardfs/mfschunkserver.cfg
ADD scripts /
RUN cp /var/lib/lizardfs/metadata.mfs.empty /var/lib/lizardfs/metadata.mfs
RUN groupadd mfs && useradd mfs -g mfs
#RUN rm /var/lib/lizardfs/metadata.mfs.lock
