#!/bin/bash
docker rm -f mfsslave$1
docker run -it --name mfsslave$1 -v mfsslave$1:/var/lib/mfs -d --net lizardfs lowet84/lizardfs-rpi sh slave.sh
