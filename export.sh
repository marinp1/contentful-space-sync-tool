#!/bin/bash

# Force script to be run from correct directory
cd "$(dirname "$0")"

if [[ "$1" != "full" && "$1" != "model" ]]; then
  echo "Export mode must be either full or model."
  exit -1
fi

EXPORT_MODE=$1

# Load configuration
. space.config

rm -rf target
mkdir target

EXPORT_OPTIONS="
 --space-id $source_space_id 
 --management-token $source_management_token
 --export-dir target
 --skip-roles true
 --skip-webhooks true
"

if [ "$EXPORT_MODE" == "full" ]; then
 EXPORT_OPTIONS=$EXPORT_OPTIONS" --include-drafts true --download-assets true"
else
 EXPORT_OPTIONS=$EXPORT_OPTIONS" --skip-content true"
fi

contentful-export $EXPORT_OPTIONS

exported_file="$(ls target/*.json)"

mv $exported_file target/export_$EXPORT_MODE.json