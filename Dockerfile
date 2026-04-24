FROM ghcr.io/openclaw/openclaw:latest

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libopenal-dev \
    libvorbis-dev \
    libogg-dev \
    zlib1g-dev \
    python3 \
    python3-venv \
    python3-pip \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*


# RUN python3 -m pip install --no-cache-dir --upgrade pip \
#     && python3 -m pip install --no-cache-dir \
#         torch torchvision diffusers accelerate
