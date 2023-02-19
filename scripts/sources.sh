#!/bin/bash

. /etc/os-release
sources=$(cat sources.list)
echo "${sources//<release>/"$VERSION_CODENAME"}" | sudo tee /etc/apt/sources.list > /dev/null

