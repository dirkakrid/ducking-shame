#!/bin/env bash
pacman -r ${1} -U https://repo.parabola.nu/libre/os/x86_64/mozilla-searchplugins-1.7-1-any.pkg.tar.xz
pacman -r ${1} -U https://repo.parabola.nu/libre/os/x86_64/icecat-31.6.0_gnu1-3-x86_64.pkg.tar.xz
pacman -r ${1} -S ttf-bitstream-vera
