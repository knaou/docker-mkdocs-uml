#!/bin/sh

set -e

mkdocs new new-tmpty

cd src
mkdocs build
cp -r site /result/
cat site/index.html


