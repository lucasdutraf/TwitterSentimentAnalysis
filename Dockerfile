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
RUN pip3 install --upgrade pip && \
    pip3 install jupyter && \
    pip3 install pandas && \
    pip3 install matplotlib && \
    pip3 install numpy && \
    pip3 install sklearn

# Coping project
COPY . /app