#!/bin/bash
docker network create lizardfs
sh server.sh
sh cgi.sh
sh slave.sh
sh slave.sh 1

sh chunk.sh
sh chunk.sh 1
sh chunk.sh 2
sh chunk.sh 3
#sh chunk.sh 4
#sh chunk.sh 5
#sh chunk.sh 6 
#sh chunk.sh 7
#sh chunk.sh 8
#sh chunk.sh 9
