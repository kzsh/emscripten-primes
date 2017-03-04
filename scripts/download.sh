#!/bin/sh
if ! [ -d "./vendor/emsdk_portable" ]; then
  mkdir -p vendor/
  curl -o vendor/emsdk-portable.tar.gz \
    https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz
  cd vendor || exit 1
  tar -xzf emsdk-portable.tar.gz
  rm emsdk-portable.tar.gz
fi
