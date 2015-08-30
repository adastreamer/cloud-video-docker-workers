#!/bin/bash

WORKING_DIR="${working_dir}"

while true
do
  POSSIBLE_PROCESSING_FILE="$(ls $WORKING_DIR | grep -i -E '\.(mov)$' | head -1)"
  DESCRIPTORS="$(lsof -l $WORKING_DIR/$POSSIBLE_PROCESSING_FILE)" 
  echo $POSSIBLE_PROCESSING_FILE
  echo $DESCRIPTORS
  if [[ ! $DESCRIPTORS ]]; then
    # here put upload to acd code
    # acd_cli create /videos
    # acd_cli create /videos/onlinelab
    # acd_cli create /videos/onlinelab/cam1
    # acd_cli upload $WORKING_DIR/$POSSIBLE_PROCESSING_FILE /videos/onlinelab/cam1
    rm $WORKING_DIR/$POSSIBLE_PROCESSING_FILE
    echo "DELETING FILE $WORKING_DIR/$POSSIBLE_PROCESSING_FILE"
  fi
  sleep 5
done
