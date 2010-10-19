#!/bin/bash

while true; do
  {
    date +%FT%T.%N
    cat /proc/$1/io | awk '{print $2}'
  } | tr '\n' '\t'
  echo
  sleep 1
done >> log
