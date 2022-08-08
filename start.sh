#!/bin/sh

readarray array <<< $( cat "$@" )

mkdir -p ~/Programs && cd ~/Programs

for element in ${array[@]}
do
  echo "clonning $element"
  git clone $element
done
