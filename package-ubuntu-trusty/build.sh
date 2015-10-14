#!/bin/bash
set -e

file="`readlink -m "$0"`"
home="`dirname "$file"`"
cd "$home"

package="init-headphone"
version="`grep -o -P -m 1 "\(.*\)" debian/changelog | tr -d "()"`"
temp="`mktemp -d`"
mkdir "$temp/$package-$version"
cp -ar * ../src "$temp/$package-$version"
cd "$temp/$package-$version"
dpkg-buildpackage  -us -uc
cd "$home"
cp "$temp"/*.deb ..
