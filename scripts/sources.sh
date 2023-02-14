#!/bin/bash

release=bookworm
sources=$(cat sources.list)
echo "${sources//<release>/"$release"}" | sudo tee -a /etc/apt/sources.list > /dev/null

