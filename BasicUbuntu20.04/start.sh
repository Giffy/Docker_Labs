cd BaseOs
./build_image.sh latest
cd ..

docker run -it --volume /tmp:/tmp --volume ./data:/data --cpus="1" --memory="1g" giffy/ubuntu_base20 /bin/bash