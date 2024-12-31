#!/bin/env bash

## Remove BS Windows metafiles
find . -name "*:Zone.Identifier" -type f -delete

## Remove assets dir & recreate
rm -rf assets
mkdir assets

## Sync sources with assets, first here is "last" to load, ones farther down will overwrite
# https://modrinth.com/resourcepack/blockpixel
rsync -avh ./sources/resourcepaks/blockpixel_v1-21-0-02/assets/ ./assets/
rm -rf ./assets/minecraft/blockstates
rm -rf ./assets/minecraft/models
rm -rf ./assets/minecraft/sounds
rm -rf ./assets/minecraft/textures/block
rm -rf ./assets/minecraft/textures/colormap
rm -rf ./assets/minecraft/textures/entity
rm -rf ./assets/minecraft/textures/environment
rm -rf ./assets/minecraft/textures/font
rm -rf ./assets/minecraft/textures/item
rm -rf ./assets/minecraft/textures/mob_effect
rm -rf ./assets/minecraft/textures/models
rm -rf ./assets/minecraft/textures/particle
rm -rf ./assets/minecraft/textures/trims
rm -rf ./assets/minecraft/textures/gui/sprites/hud
# https://modrinth.com/resourcepack/3ddripstone
rsync -avh ./sources/resourcepaks/3ddripstone_v1-0-1/assets/ ./assets/
# https://vanillatweaks.net/picker/resource-packs/
rsync -avh ./sources/resourcepaks/vanillatweaks_mc1-21-1/assets/ ./assets/
# https://modrinth.com/plugin/tooltrims
rsync -avh ./sources/resourcepaks/tooltrims_v2-2-2a/assets/ ./assets/
# https://modrinth.com/resourcepack/roundista
rsync -avh ./sources/resourcepaks/roundista_128xR29/assets/ ./assets/
# https://modrinth.com/resourcepack/fresh-animations
rsync -avh ./sources/resourcepaks/freshanims_v1-9-2/assets/ ./assets/
# https://modrinth.com/resourcepack/icon-xaeros-x-freshanimations
rsync -avh ./sources/resourcepaks/faxaeros_v2-4/assets/ ./assets/
### always keep custom changes last..
rsync -avh ./sources/resourcepaks/custom_overlay_mc1-21-1/assets/ ./assets/
