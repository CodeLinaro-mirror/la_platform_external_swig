#!/bin/sh
echo "/* SWIG warning codes - generated from swigwarn.h - do not edit */" \
  >Lib/swigwarn.swg
cat Source/Include/swigwarn.h | \
  grep "^#define WARN\|/\*.*\*/\|^[ \t]*$" | \
  sed 's/^#define \(WARN.*[0-9][0-9]*\)\(.*\)$/%define SWIG\1 %enddef\2/' \
  >>Lib/swigwarn.swg
