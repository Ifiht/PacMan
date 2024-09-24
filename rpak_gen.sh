#!/bin/env bash

## Remove BS Windows metafiles
find . -name "*:Zone.Identifier" -type f -delete

## Remove data dir & recreate
rm -rf assets
mkdir assets

## Sync sources with data, first here is "last" to load, ones farther down will overwrite
# https://vanillatweaks.net/picker/resource-packs/
rsync -avh ./sources/resourcepaks/vanillatweaks_mc1-21-1/assets/ ./assets/
