#!/bin/env bash
##########################################################################################################################################################################################
function usage {
cat << EOF
${0} - help
EOF
if [[ ${2} ]];then printf "%s\n" "${2}";fi
exit ${1}
}
##########################################################################################################################################################################################
#DEFAULTS
VAR0=default
##########################################################################################################################################################################################
while getopts 'h' arg;do
case "${arg}" in
  h) usage 0;;
  *) usage 1;;
esac
done
##########################################################################################################################################################################################
#DEFAULT FUNCTIONS
function debuggery {
cat << EOF
debuggery...
EOF
}
##########################################################################################################################################################################################
if [[ ! -z $INPUT0 || && -z $INPUT1 ]];then
fi
##########################################################################################################################################################################################
