#!/bin/bash
. space.config

rm -rf target
mkdir target

contentful-export \
  --space-id $source_space_id \
  --management-token $source_management_token \
  --include-drafts true \
  --download-assets true \
  --export-dir target

exported_file="$(ls target/*.json)"

contentful-import \
  --space-id $target_space_id \
  --management-token $target_management_token \
  --content-file $exported_file 