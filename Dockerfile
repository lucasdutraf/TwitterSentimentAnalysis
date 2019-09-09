# Base image
FROM ubuntu

# Setting work directiory
WORKDIR /app

# Install OS dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3.6 \
    python3-pip \
    gcc

# Install python dependencies
RUN apt install -y python3-numpy

RUN pip3 install \
    jupyter \
    pandas \
    matplotlib \
    sklearn

# Coping project
COPY . /app