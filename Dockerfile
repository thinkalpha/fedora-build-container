FROM fedora:39 AS build

RUN yum update -y && yum install -y \
    wget \
    cmake \
    texi2html \
    texinfo \
    automake \
    autogen \
    autoconf \
    ninja-build \
    m4 \
    bison \
    gcc-c++ \
    lz4-devel \
    unixODBC-devel.x86_64 \
    kernel-headers kernel-devel

RUN dnf group install "Development Tools" -y
RUN useradd -ms /bin/bash build