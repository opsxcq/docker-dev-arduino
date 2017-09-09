# Arduino development environment for Docker
[![Docker Pulls](https://img.shields.io/docker/pulls/strm/dev-arduino.svg?style=plastic)](https://hub.docker.com/r/strm/dev-arduino/)

A complete Arduino development environment for your builds inside docker. A good choice if you need to run arduino builds in your CI (Gitlab for example).

# Usage

Just clone this repo, and `source functions.sh`, and you will have all functions that you need to run your environment. Some functions will be added to your current bash environment, they are:

  * `arduino-init` - Initializes a new arduino project in your current directory, do the entire bootstrap process (including a Gitlab CI configuration)
  * `arduino-build` - Executes your build and generate your binary firmware
  * `arduino-upload` - Considering that your arduino is mapped to `/dev/ttyUSB0`, it will upload your code to your board
  * `arduino-watch` - Considering that your arduino is mapped to `/dev/ttyUSB0`, it will monitor it's serial output and show in your console
