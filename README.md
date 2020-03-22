This repository contains a Dockerfile and script for building the `pyransac` library inside a docker container. The library is compiled inside the container with the appropriate requirements (gfortran, lapack, etc) and the final compiled libraries show up in a `pyceres` folder ready to be used in your host system.

Step 1. Make sure you are on a linux system and you have docker installed. I'm ususally starting out inside a barebones Ubuntu 18.04 image.

Step 2. Clone this repo

Step 3. Run ./build_pyransac.sh (this will build the base image with the requirements, download `pyransac`, and compile it)

Now the `pyransac` folder will contain a version of pyransac built with an Ubuntu 18.04-based base image

Now simply make sure that the `pyransac` folder is inside your PYTHONPATH
