#!/bin/bash


function dos2unix_all() {
  find $1 -type f -exec dos2unix {} \;
}
