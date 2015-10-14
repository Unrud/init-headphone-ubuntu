#!/bin/bash
set -e

file="`readlink -m "$0"`"
home="`dirname "$file"`"
cd "$home"

for s in package-*/build.sh; do
    "$s"
done
