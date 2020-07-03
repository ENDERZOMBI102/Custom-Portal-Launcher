# This will pull the official Gitpod `vnc` image
# which has much of what you need to start
FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -q -y \
    freeglut3-dev \
    python3.8-dev \
    libpython3.8-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libgstreamer-plugins-base1.0-dev \
    libgtk-3-dev \
    libnotify-dev \
    libsdl2-dev \
    libwebkit2gtk-4.0-dev \
    libxtst-dev \
    libgtk2.0-dev \
    mingw-w64 \
RUN sudo rm -f /var/lib/apt/lists/*
