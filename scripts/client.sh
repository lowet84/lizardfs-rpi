#!/bin/bash
mfsmount /mnt
mfssetgoal -r 3 /mnt
cd /mnt
wget https://github.com/Sonarr/Sonarr/archive/v2.0.0.4230.tar.gz
