# contentful-space-sync-tool

A simple tool for copying content from a Contentful space to another. The models and data from source space will be copied to target space, but the target space will not be completely cleared.
Uses Contentful's [import](https://github.com/contentful/contentful-import) and [export](https://github.com/contentful/contentful-export) tools.

## Configuration
By default export includes drafts and also downloads assets, see export tool's documentation for available configuration options. Otherwise there's no additional configuration.

## Instructions

1. Add space IDs and space content management tokens for source space and target space to space_template.config
2. Rename space_template.config to space.config
3. Execute sync_spaces.sh

Export can be found from target folder, which will be cleared every time the utility is run.

**Note that locales must be exactly same for both spaces**
