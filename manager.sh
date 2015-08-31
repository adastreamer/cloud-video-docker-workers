#!/bin/bash
ACTION=$1; shift
case "$ACTION" in

  # SETUP SERVER ACTION
  "setup_server" )
    while getopts s:l:p: option
    do
      case "${option}" in s) SERVER=${OPTARG};; l) LOGIN=${OPTARG};; p) PASS=${OPTARG};; esac
    done
    if [ -z "${SERVER}" ]; then echo "SERVER (-s) is unset or set to the empty string"; exit; fi
    if [ -z "${LOGIN}" ]; then echo "LOGIN (-l) is unset or set to the empty string"; exit; fi
    if [ -z "${PASS}" ]; then echo "PASS (-p) is unset or set to the empty string"; exit; fi
    ssh -t $SERVER bash -c "'
      docker -v >/dev/null 2>&1 || { echo \"Docker not installed. Exiting...\" >&2; exit; }
    '"
  ;;

  # CHECK SERVER ACTION
  "check_server" )
    echo "check_server"
  ;;

  # MISSING ACTION HANDLER
  * )
    echo "Missing or wrong action. Examples:"
    echo "manager.sh setup_server"
    echo "manager.sh check_server"
  ;;

esac