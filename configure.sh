#!/bin/sh
# Exec `./configure.sh` at CostaRica Directory
# chmod u+x configure.sh

# Erase the cmd directory if it exists.
if [ -d "cmd" ]; then
  rm -r cmd
fi

# Make directory "cmd"
mkdir cmd

# Copy the wc.rb file to the cmd directory with the rb extension erased.
cp ./wc.rb ./cmd/wc

# Copy configuration json file to cmd file
cp ./setting.json ./cmd/setting.json