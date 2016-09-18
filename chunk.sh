#!/bin/bash
docker rm -f mfschunk$1
docker run -it --name mfschunk$1 -v mfschunk$1:/mnt -d --net lizardfs lowet84/lizardfs-rpi sh chunk.sh
