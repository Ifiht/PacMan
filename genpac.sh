#!/bin/env bash

## Remove BS Windows metafiles
find . -name "*:Zone.Identifier" -type f -delete

## Remove data dir & recreate
rm -rf data
mkdir data

## Sync sources with data
# https://modrinth.com/datapack/william-wythers-overhauled-overworld-(datapack)
rsync -avh --progress ./sources/wwoo_mc1-21-0/data/ ./data/
rsync -avh --progress ./sources/wwoo_mc1-21-0/1-21-overlay/data/ ./data/
# https://modrinth.com/datapack/qraftys-mushroom-villages
rsync -avh --progress ./sources/qraftyshroom_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/better-end-cities-(vanilla)
rsync -avh --progress ./sources/betterendcities_mc1-21-0/data/ ./data/
# https://modrinth.com/datapack/terralith
rsync -avh --progress ./sources/terralith_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/terratonic
rsync -avh --progress ./sources/terratonic_mc1-21-0/data/ ./data/
# https://modrinth.com/datapack/continents
rsync -avh --progress ./sources/continents_mc1-21-1/data/ ./data/
### always keep custom changes last..
rsync -avh --progress ./sources/custom_overlay_mc1-21-1/data/ ./data/
