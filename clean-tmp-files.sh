#!/bin/bash
#
# Blow away all emacs temporary files in the current directory tree.

find . -name "\.\#*" -exec rm -v {} \;
find . -name "\#*" -exec rm -v {} \;
