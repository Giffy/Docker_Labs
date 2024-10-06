#/bin/bash

IMAGE_NAME="giffy/ubuntu20_base"
VERSION="$1"

if ! [[ $VERSION =~ ^[a-zA-Z0-9_]{1,40}$ ]]
then
    printf "\nInsert a valid version name. \nexample: bash ./build_image.sh Version\n"
    printf "Sample: bash ./build_image.sh 1.0\n\n"
    exit 1
fi

echo "docker build -t $IMAGE_NAME:$VERSION ."
docker build -t $IMAGE_NAME:$VERSION .


