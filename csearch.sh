#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Only one argument allowed: $# given."
    echo "Be sure to quote arguments with spaces."
    exit 1
fi

searchString=$1
find . \( -name "*.[cmh]" -or -name "*.mm" -or -name "*.hpp" \) -exec grep -nH "${searchString}" {} \;

exit 0
