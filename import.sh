#!/bin/bash

# Force script to be run from correct directory
cd "$(dirname "$0")"

if [[ "$1" != "full" && "$1" != "model" ]]; then
  echo "Import mode must be either full or model."
  exit -1
fi

if [ "$2" == "" ]; then
  echo "Input file is required."
  exit -1
fi

IMPORT_MODE=$1
INPUT_FILE=$2

# Load configuration
. space.config

IMPORT_OPTIONS="
 --space-id $target_space_id 
 --management-token $management_token
 --content-file $INPUT_FILE
"

if [ "$IMPORT_MODE" == "full" ]; then
 IMPORT_OPTIONS=$IMPORT_OPTIONS" --content-model-only false"
else
 IMPORT_OPTIONS=$IMPORT_OPTIONS" --content-model-only true"
fi

contentful-import $IMPORT_OPTIONS