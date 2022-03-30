#!/bin/bash
echo "Preparing build..."
set -e # Fail if command fails
rm -rf build

if test -z "$1"; then
  echo "Building asciidoc-to-pdf docker container..."
  docker build -f asciidoc-to-pdf.Dockerfile -t thesis-ascii-to-pdf .
fi

mkdir build

echo "Running asciidoc-to-pdf docker container..."
docker run --rm -v "$(pwd)/writing:/work/writing" -v "$(pwd)/assets:/work/assets" -v "$(pwd)/build:/work/build" thesis-ascii-to-pdf

echo "Build done!"
