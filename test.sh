#!/bin/bash

# test if there are other shell scripts in the current directory
if ls * | grep '\.sh$' | grep -v "`basename $0`" >/dev/null
then
  echo 'Shell script(s) detected'
  exit 0
else
  echo 'No shell scripts detected'
  exit -1
fi
