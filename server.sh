#!/bin/bash
docker rm -f mfsmaster
docker run -it -p 9421:9421 --name mfsmaster -v mfsmaster$1:/var/lib/lizardfs -v mfsslave$1:/slave -d --net lizardfs lowet84/lizardfs-rpi sh server.sh
