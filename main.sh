#!/bin/bash

if [ -z "$1" ]
then
    bash
elif [ "$1" = "init" ]
then
    ino init
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
