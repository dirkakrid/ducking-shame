#!/bin/env bash
umask 077

gpg --passphrase-fd 0 <<< dd if=/dev/gnupg bs=1024 count=1

dd if=/dev/sda skip=1024000 bs=215 count=1 > test
dd if=/dev/random of=./test bs=1024 count=1

dd if=/dev/random bs=512 count=1 >> test
dd if=./test count=1 bs=512 seek=1024 > erm











