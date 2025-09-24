#!/bin/bash


# generate base docs
# sphinx-quickstart docs

## change docs/source/*.rst files

# build-docs.sh

echo "🔧 Building Sphinx docs..."
cd docs
make clean
make html

echo "✅ HTML docs are built in docs/build/html"
