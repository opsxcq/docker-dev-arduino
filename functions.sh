#!/bin/bash

# Arduino features using docker image

function arduino(){
    docker run --rm -it -v "$(pwd):/src" strm/dev-arduino $@     
}

function arduino-init(){
    docker run --rm -it -v "$(pwd):/src" strm/dev-arduino init $1
}

function arduino-build(){
    docker run --rm -it -v "$(pwd):/src" strm/dev-arduino build
}

function arduino-upload(){
    docker run --rm -it -v "$(pwd):/src" --device=/dev/ttyUSB0 strm/dev-arduino upload
}


function arduino-watch(){
    docker run --rm -it -v "$(pwd):/src" --device=/dev/ttyUSB0 strm/dev-arduino serial
}
