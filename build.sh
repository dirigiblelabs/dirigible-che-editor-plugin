#!/bin/sh
set -e
set -u

if ! [ -d assembly ]; then
    mkdir assembly
fi

if [ -f assembly/dirigible-che-editor-plugin.tar.gz ]; then
    rm assembly/dirigible-che-editor-plugin.tar.gz
fi

cd etc
tar zcvf ../assembly/dirigible-che-editor-plugin.tar.gz .

