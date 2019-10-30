#!/bin/bash

rm -rf debian
cp -r cache_$builddir debian

DEB_BUILD_OPTIONS="nostrip noopt" fakeroot ./debian/rules clean
DEB_BUILD_OPTIONS="nostrip noopt" fakeroot ./debian/rules binary
