#!/bin/bash
if [ -f /slave/metadata.mfs ]
then
  if ( test /slave/metadata.mfs -nt /var/lib/mfs/metadata.mfs ) || [ ! -f /var/lib/mfs/metadata.mfs ] ; then
    echo "copying from shadow"
    rm /var/lib/mfs/*
    cp -v /slave/* /var/lib/mfs/
    rm /var/lib/mfs/*.lock
    mfsmetarestore -a
  else
    echo "master exists and is newer" 
  fi
fi

if mfsmaster
then
  echo "ok"
else
  echo "restoring metadata"
  mfsmetarestore -a
  mfsmaster
fi
read -p "Press space to exit..." key
