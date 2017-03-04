#!/bin/sh
./vendor/emsdk_portable/emsdk update && \
./vendor/emsdk_portable/emsdk install latest && \
./vendor/emsdk_portable/emsdk activate latest
