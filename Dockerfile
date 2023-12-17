FROM ubuntu:24.04

# install tools
RUN apt-get update \
    && apt-get update -y \
    && apt-get upgrade -y \
    software-properties-common \
    git \
    curl \
    wget \
    vim \
    nano \
    unzip \
    zip \
    python3 \
    python3-pip \
    python3-venv \
    sudo

# Add user named samk13 and add it to sudoers
RUN useradd -ms /bin/bash samk13
RUN usermod -aG sudo samk13
RUN echo "samk13 ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to samk13 user
USER samk13

WORKDIR /home/samk13

COPY ./dev /home/samk13/dev

# Run using: 
# docker build -t toolbox:latest -f Dockerfile .
# docker run -it toolbox:latest /bin/bash