#!/bin/bash

if [ "$2" = DEBUG ]
then
  set -x
fi

if [ $# -lt 1 ]
then
  echo "no environment name provided"
  exit 1
fi

terraform workspace list -no-color | grep $1
if [ $? -ne 0 ]
then
  terraform workspace new -no-color $1
fi
