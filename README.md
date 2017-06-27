# contentful-space-sync-tool

A simple tool for copying content from a Contentful space to another, target space will be overwritten.
Uses Contentful's [import](https://github.com/contentful/contentful-import) and [export](https://github.com/contentful/contentful-export) tools.

## Instructions

1. Add space IDs and content management tokens for source space and target space to space_template.config
2. Rename space_template.config to space.config
3. Export space with export.sh \[model/full\]
4. Import space with import.sh \[model/full\] \[filename\]

Export can be found from target folder with name _export\_\[mode\]_, which will be cleared every time the utility is run.

**Note that locales must be exactly same for both spaces**
