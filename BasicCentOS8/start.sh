cd BaseOs
./build_image.sh latest
cd ..

docker run -it -h centos8 \
           --cpus="1" --memory="1g" \
           --volume /tmp:/tmp --volume ./data:/data \
           giffy/centos8_base \
           /bin/bash
