# contentful-space-sync-tool

A simple tool for copying content from a Contentful space to another. The content models and their data will be copied to target space and target space's data will be overwritten if a content model with same ID already exists, otherwise target space's data will be left unchanged.

Uses Contentful's [import](https://github.com/contentful/contentful-import) and [export](https://github.com/contentful/contentful-export) tools.

Make sure that those are installed before running this tool:
* npm install -g contentful-export
* npm install -g contentful-import

## Configuration
By default export includes drafts and also downloads assets, see export tool's documentation for available configuration options. Otherwise there's no additional configuration.

## Instructions

1. Add space IDs and space content management tokens for source space and target space to space_template.config
2. Rename space_template.config to space.config
3. Execute sync_spaces.sh

Export can be found from target folder, which will be cleared every time the utility is run.

**Note that locales must be exactly same for both spaces**
