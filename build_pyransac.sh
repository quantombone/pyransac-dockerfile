#!/bin/bash
# Build pyransac
sudo docker build -t pyransac_builder .
sudo docker run --name pyransac_builder -v `pwd`:/target_directory pyransac_builder
sudo docker rm pyransac_builder

# Now the pyransac subdirectory contains what you need
