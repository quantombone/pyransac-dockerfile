#!/bin/bash
# Build pyransac
sudo docker build -t pyransac_builder .
sudo docker run --name pyransac_builder -v `pwd`:/target_directory pyransac_builder
sudo docker rm pyransac_builder

#change permissions so that the final directory is not owned by root
sudo chown -R `whoami` pyransac

# Now the pyransac subdirectory contains the library (.so file)
echo import 'pyransac' | python3 - && echo "Installation of pyransac finished" || echo "Installation of pyransac failed"
