cd BaseOs
./build_image.sh latest
cd ..

docker run -it --volume /tmp:/tmp --volume ./data:/data  giffy/centos8_base /bin/bash