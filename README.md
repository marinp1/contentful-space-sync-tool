# contentful-space-sync-tool

A simple tool for copying content from a Contentful space to another.
Uses https://github.com/contentful/contentful-import and https://github.com/contentful/contentful-export tools.

## Instructions

1. Add space IDs and space content management tokens for source space and target space to space_template.config
2. Rename space_template.config to space.config
3. Run ./sync_spaces.sh

**Note that locales must be same for both spaces**