cd BaseOs
./build_image.sh latest
cd ..

docker run -it -h ubuntu20 \
           --cpus="1" --memory="1g" \
           --volume /tmp:/tmp --volume ./data:/data \
           giffy/ubuntu20_base \
           /bin/bash