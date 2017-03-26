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
    git init
    ino init
    # Git ignore
    echo '.build' >> .gitignore
elif [ "$1" = "build" ]
then
    ino build
elif [ "$1" = "upload" ]
then
    ino upload
elif [ "$1" = "serial" ]
then
    ino serial
else
    echo '[-] Command not found '$1
    exit -1
fi
