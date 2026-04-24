FROM 0penclaw/openclaw:latest

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \  
    python-pip \
    python3-dev \
    build-essential \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/bin/python3 /usr/bin/python

# RUN python3 -m pip install --no-cache-dir --upgrade pip \
#     && python3 -m pip install --no-cache-dir \
#         torch torchvision diffusers accelerate
