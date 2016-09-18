if test $1 -nt $2; then
   echo $1 is newer
else
   echo $2 is newer
fi
