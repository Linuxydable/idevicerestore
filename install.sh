#!/bin/bash

apk update && apk add --no-cache \
git \
build-base \
make \
automake \
autoconf \
libtool \
pkgconf \
openssl \
curl \
libusb \
libzip \
readline \
openssl-dev \
curl-dev \
libusb-dev \
libzip-dev \
python3-dev \
#python-dev \
readline-dev \
libxml2-dev


git clone https://github.com/libimobiledevice/libplist.git /usr/src/libplist && \
cd /usr/src/libplist && \
./autogen.sh && make && make install 

git clone https://github.com/libimobiledevice/libimobiledevice-glue.git /usr/src/libimobiledevice-glue && \
cd /usr/src/libimobiledevice-glue && \
./autogen.sh && make && make install

git clone https://github.com/libimobiledevice/libusbmuxd.git /usr/src/libusbmuxd && \
cd /usr/src/libusbmuxd && \
./autogen.sh && make && make install

git clone https://github.com/libimobiledevice/libimobiledevice.git /usr/src/libimobiledevice && \
cd /usr/src/libimobiledevice && \
./autogen.sh && make && make install

git clone https://github.com/libimobiledevice/usbmuxd.git /usr/src/usbmuxd && \
cd /usr/src/usbmuxd && git checkout 1.1.1 && \
./autogen.sh && make && make install

git clone https://github.com/Linuxydable/libirecovery.git /usr/src/libirecovery && \
cd /usr/src/libirecovery && \
./autogen.sh && make && make install

git clone https://github.com/libimobiledevice/idevicerestore.git /usr/src/idevicerestore && \
cd /usr/src/idevicerestore && \
./autogen.sh && make && make install 

git clone https://github.com/libimobiledevice/libideviceactivation.git /usr/src/libideviceactivation && \
cd /usr/src/libideviceactivation && \
./autogen.sh && make && make install