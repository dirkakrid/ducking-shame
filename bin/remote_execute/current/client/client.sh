#!/bin/env bash
while true;do
  read -p "input: " -r message
  message+=""
  gpg -e -r spareproject <<< $message > /dev/udp/127.0.0.1/10237
done
