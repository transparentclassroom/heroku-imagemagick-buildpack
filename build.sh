#!/usr/bin/env bash
set -e
docker build --no-cache --pull -t heroku-imagemagick container
mkdir -p build
docker run --name heroku-imagemagick heroku-imagemagick sh
docker cp heroku-imagemagick:/usr/src/imagemagick/build/imagemagick.tar.bz2 $(pwd)/build/
docker stop heroku-imagemagick
