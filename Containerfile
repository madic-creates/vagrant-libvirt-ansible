FROM ghcr.io/vagrant-libvirt/vagrant-libvirt:0.12.2-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install ansible==10.6.0
