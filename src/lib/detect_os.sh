#!/bin/bash

if [[ $OSTYPE == "linux-gnu" && -d "/mnt/c/Users" ]] ; then
  MYBASH_OS="wsl";

elif [[ $OSTYPE == "linux-gnu" && $USER == "vagrant" ]]; then
  MYBASH_OS="vagrant";

elif [[ $OSTYPE == "msys" ]]; then
  MYBASH_OS="git";

elif [[ $OSTYPE == "linux-gnu" ]]; then
  MYBASH_OS="linux";

elif [[ $OSTYPE == "darwin16" ]]; then
  MYBASH_OS="mac";

else
  MYBASH_OS="unknown";

fi
