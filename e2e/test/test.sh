#!/bin/sh

set -e

mkdocs new new-tmpty

cd $(dirname $0)/..

cp -r test/src .
cd src

mkdocs build

cp -r site /result/

cat site/index.html
