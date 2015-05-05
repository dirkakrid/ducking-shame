#!/bin/env bash
export TIMESTAMP=0
export TOGGLE=0

trap "exit" INT

while true;do
  nc -vulncp 10239 &>/dev/null <<< $(./executable)
  if [[ $(date +%s) -gt ${TIMESTAMP} ]];then
    if [[ ${TOGGLE} == 0 ]];then
      export TOGGLE=1
    elif [[ ${TOGGLE} == 1 ]];then
      export TIMESTAMP=$(($(date +%s) + 60))
      export TOGGLE=0
    fi
  fi
done
