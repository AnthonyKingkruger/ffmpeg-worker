FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    git \
    curl \
    file \
    espeak-ng \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir openai-whisper edge-tts

WORKDIR /app
