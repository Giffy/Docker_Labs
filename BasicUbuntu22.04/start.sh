cd BaseOs
./build_image.sh latest
cd ..

docker run -it -h ubuntu22 \
           --cpus="1" --memory="1g" \
           --volume /tmp:/tmp --volume ./data:/data \
           giffy/ubuntu22_base \
           /bin/bash


#docker run -it --volume /tmp:/tmp --volume ./data:/data --cpus="1" --memory="1g" giffy/ubuntu_base22 /bin/bash