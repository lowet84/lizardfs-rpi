#!/bin/bash
#chown mfs:mfs /mnt
#chown mfs:mfs /var/lib/lizardfs/

while [ 1 ];do
if mfschunkserver -d
then
  read -p "Press space to exit..." key
else
  echo "Error!"
fi
done
