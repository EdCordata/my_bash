#!/bin/bash

function my_bash_update() {
  rm -rf ~/my_bash
  git clone "$REPO" ~/my_bash
  source ~/.bash_profile
}
