FROM 0penclaw/openclaw:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install Python3 and pip
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Make python point to python3 (optional)
RUN ln -sf /usr/bin/python3 /usr/bin/python

# Upgrade pip and install ML libraries
RUN python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir \
        torch \
        torchvision \
        diffusers \
        accelerate
