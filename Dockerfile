FROM ubuntu:18.04

# update system
RUN apt-get clean
RUN apt-get update
RUN apt-get install -qy \
    git python3 python3-setuptools python3-dev
RUN apt-get install -y cmake libblas-dev liblapack-dev gfortran
RUN apt-get install -y g++ gcc

# download and build pyransac
RUN git clone https://github.com/ducha-aiki/pyransac.git
WORKDIR pyransac
RUN python3 ./setup.py build

# copy built assets into target directory (which will be a -v volume)
CMD cp -R /pyransac/build/lib.linux-x86_64-3.6/pyransac /target_directory


