# This will pull the official Gitpod `vnc` image
# which has much of what you need to start
FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -q -y \
    freeglut3-dev \
    python3.8-dev \
    libpython3.8-dev \
    mingw-w64
RUN sudo rm -f -r /var/lib/apt/lists/*
