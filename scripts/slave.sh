#!/bin/bash
rm /etc/mfs/mfsmaster.cfg
mv /etc/mfs/mfsmaster.cfg.slave /etc/mfs/mfsmaster.cfg
mfsmetarestore -a
echo "starting server"
mfsmaster
read -p "Press space to exit..." key
