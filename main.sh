#!/bin/bash

if [ -z "$1" ]
then
    bash
elif [ "$1" = "init" ]
then
    if [ ! -z "$2" ]
    then
        mkdir "$2"
        cd "$2"
    fi
    ino init
    git init
    # Git ignore
    echo '.build' >> .gitignore
    # gitlab-ci
    cat > .gitlab-ci.yml << EOF
image: strm/dev-arduino

build:
  stage: build
  script: 
    - ino build
    - cp .build/uno/firmware.hex .
  artifacts:
      name: 'firmaware-${CI_BUILD_REF_NAME}-${CI_BUILD_ID}'
      paths:
          - firmware.hex
EOF
    git add *
    git add .gitignore
    git add .gitlab-ci.yml
elif [ "$1" = "build" ]
then
    ino build
elif [ "$1" = "upload" ]
then
    ino upload
elif [ "$1" = "serial" ]
then
    ino serial
elif [ "$1" = "sh" ]
then
    bash
else
    echo '[-] Command not found '$1
    exit -1
fi
