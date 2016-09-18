docker rm -f cgiserver
docker run -it --name cgiserver -d -p 9425:9425 --net lizardfs lowet84/lizardfs-rpi sh cgi.sh
