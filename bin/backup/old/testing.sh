#!/bin/env bash

systemctl status dnscrypt-proxy.service
systemctl status unbound.service

dig +dnssec www.isoc.org # apperently a website with dnssec enabled should probably list a few...
dig txt debug.opendns.com # was the one that shows crypt or not?

drill -D 00f.net


#tcpdump -i bridge dst host 208.67.220.220 or src host 208.67.220.220 -n
#tcpdump -i bridge dst port 53 or src port 53 -n -x -X -v


