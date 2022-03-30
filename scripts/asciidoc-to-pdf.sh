#!/bin/bash
echo "Starting build..."
set -e # Fail if command fails

tmp_path='/tmp/pre-build'

mkdir -p $tmp_path

cp -r . $tmp_path/

cd $tmp_path

# Add path to allow imports
export PYTHONPATH=$PYTHONPATH:$(pwd)/writing/diagrams

echo "Building PDF version..."
asciidoctor-pdf \
-r /tmp/asciidoctor-diagram/lib/asciidoctor-diagram.rb \
-r asciidoctor-mathematical \
-r asciidoctor-bibtex \
-r asciidoctor-lists \
-o thesis.pdf \
writing/main.adoc # --trace -v -w -t

cp thesis.pdf /work/build/

echo "Building printed version..."
asciidoctor-pdf \
-r /tmp/asciidoctor-diagram/lib/asciidoctor-diagram.rb \
-r asciidoctor-mathematical \
-r asciidoctor-bibtex \
-r asciidoctor-lists \
-o thesis-printed.pdf \
-a printed-version=true \
writing/main.adoc # --trace -v -w -t

cp thesis-printed.pdf /work/build/

rm -rf $tmp_path
