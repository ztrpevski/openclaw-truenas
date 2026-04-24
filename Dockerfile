FROM alpine/openclaw:latest

# Install Python and build deps
RUN apk add --no-cache \
    python3 \
    py3-pip \
    py3-virtualenv \
    build-base \
    linux-headers \
    git \
    curl

# Ensure python/pip commands exist
RUN ln -sf python3 /usr/bin/python

# Upgrade pip tooling
RUN python3 -m pip install --no-cache-dir --upgrade pip setuptools wheel

# Install ML packages
RUN python3 -m pip install --no-cache-dir \
    torch torchvision \
    diffusers accelerate
