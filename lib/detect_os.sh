#!/bin/bash

if [[ $OSTYPE == "linux-gnu" && -d "/mnt/c/Users" ]] ; then
  MYBASH_OS="windows_bash";

elif [[ $OSTYPE == "linux-gnu" && $USER == "vagrant" ]]; then
  MYBASH_OS="linux_vagrant";

elif [[ $OSTYPE == "msys" ]]; then
  MYBASH_OS="windows_git";

elif [[ $OSTYPE == "linux-gnu" ]]; then
  MYBASH_OS="linux";

elif [[ $OSTYPE == "darwin16" ]]; then
  MYBASH_OS="mac";

else
  MYBASH_OS="unknown";

fi
