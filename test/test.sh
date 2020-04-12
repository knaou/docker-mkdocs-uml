#!/bin/sh

set -e

mkdocs new new-tmpty

cd src
mkdocs build
cat site/index.html


