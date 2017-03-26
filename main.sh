#!/bin/bash

if [ -z "$1" ]
then
    bash
elif [ "$1" = "init" ]
    ino init
elif [ "$1" = "build" ]
    ino build
elif [ "$1" = "upload" ]
    ino upload
elif [ "$1" = "serial" ]
    ino serial
else
    echo '[-] Command not found '$1
    exit -1
fi
