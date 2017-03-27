#!/bin/sh

cd $1/build
#make clean 2> /dev/null || true
PATH=/tmp/openscap-installed/bin:$PATH cmake -D 
PATH=/tmp/openscap-installed/bin:$PATH make PREFIX=/tmp/openscap-installed debian8

