#!/bin/bash
ACTION=$1
case "$ACTION" in
"setup_server" )
  echo "setup_server"
;;
"check_server" )
  echo "check_server"
;;
* )
  echo "Missing or wrong action. Examples:"
  echo "manager.sh setup_server"
  echo "manager.sh check_server"
;;
esac