#!/bin/env bash
#VARIABLES
OVERLAYFS_DIR="/opt/"
UNIONFS_DIR="/var/lib/container/"
SOCKET="/tmp/nspawnd.sock"
OVERLAYFS=()
UNIONFS=()
#INIT
if [[ ! -S ${SOCKET} ]];then mkfifo ${SOCKET};fi

#LOOP
while true;do



  for i in `ls ${OVERLAY_DIR}`;do OVERLAYFS+=(${i});done
  for i in `ls ${UNION_DIR}`;do UNIONFS+=(${i});done
  for i in ${OVERLAYFS[@]};do
    if [[ ! `ls ${UNION_DIR} | grep ${i}` && ${i} != "template" ]];then
      mkdir /var/lib/container/${i}
      unionfs -o allow_other,use_ino,suid,dev,nonempty -o cow,chroot=/opt/,max_files=32768 /${i}=RW:/template=RO /var/lib/container/${i}
      systemctl start systemd-nspawn@${i}
      echo "nspawnd: container /var/lob/container/${i}" > ${SOCKET}
    fi
  done
  OVERLAYFS=()
  UNIONFS=()
  sleep 3
done
