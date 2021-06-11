FROM python:3.9
ENV PYTHONUNBUFFERED 1
ENV TZ=Asia/Tokyo

RUN mkdir -p /yaramaster
ENV HOME=/yaramaster
WORKDIR $HOME

RUN useradd ubuntu
RUN dpkg --add-architecture i386

RUN apt clean && apt update && apt upgrade -y
RUN apt install wine wine32 -y
RUN apt install vim unzip zip gdb ltrace strace bash-completion -y
RUN apt install mtools nasm build-essential g++ make -y
RUN apt install bsdmainutils hexedit tweak make -y
RUN apt install mingw-w64 mingw-w64-common mingw-w64-i686-dev mingw-w64-tools mingw-w64-x86-64-dev -y

RUN pip install yara-python

WORKDIR /
RUN wget https://github.com/VirusTotal/yara/archive/refs/tags/v4.1.0.tar.gz
RUN tar -zxf v4.1.0.tar.gz

WORKDIR /yara-4.1.0
RUN sh ./build.sh

WORKDIR $HOME
RUN echo "export PATH=$PATH:/yara-4.1.0" >> /etc/profile