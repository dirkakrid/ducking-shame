#!/bin/env bash

feh --bg-scale /etc/background
NOTIFICATION="xsetroot.sh [ "
conky | while read -r; do xsetroot -name "${NOTIFICATION}${REPLY} ]"; done 2>dev/null  &
