#!/bin/env bash


## Remove BS Windows metafiles
find . -name "*:Zone.Identifier" -type f -delete


## Remove data dir & recreate
rm -rf data
mkdir data


## Sync sources with data, first here is "last" to load, ones farther down will overwrite
# https://modrinth.com/datapack/better-end-cities-(vanilla)
rsync -avh ./sources/betterendcities_mc1-21-0/data/ ./data/
# https://modrinth.com/datapack/qraftys-mushroom-villages
rsync -avh ./sources/qraftyshroom_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/terralith
rsync -avh ./sources/terralith_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/terratonic
rsync -avh ./sources/terratonic_mc1-21-0/data/ ./data/
# https://modrinth.com/datapack/william-wythers-overhauled-overworld-(datapack)
# only the dark forest (-_-)
rsync -avh ./sources/wwoo_mc1-21-0/data/wythers ./data/
rsync -avh ./sources/wwoo_mc1-21-0/1-21-overlay/data/wythers/ ./data/wythers/
rsync -avh ./sources/wwoo_mc1-21-0/1-21-overlay/data/minecraft/worldgen/biome/dark_forest.json ./data/minecraft/worldgen/biome/
# https://modrinth.com/datapack/continents
rsync -avh ./sources/continents_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/nice-villagers-remastered
rsync -avh ./sources/nicevillagers_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/blazeandcaves-advancements-pack
rsync -avh ./sources/blazencavesadv_mc1-21-0/data/ ./data/
# https://modrinth.com/datapack/blood-moon
rsync -avh ./sources/hordenights_mc1-21-1/data/ ./data/
rsync -avh ./sources/hordenights_mc1-21-1/format48/data/ ./data/
# https://modrinth.com/datapack/tool-trims
rsync -avh ./sources/tooltrims_mc1-21-1/data/ ./data/
rsync -avh ./sources/tooltrims_mc1-21-1/tool_trims_1_21/data/ ./data/
### always keep custom changes last..
rsync -avh ./sources/custom_overlay_mc1-21-1/data/ ./data/


## Make continents larger:
sed -i 's/"xz_scale": 0.13,/"xz_scale": 0.09,/g' data/minecraft/worldgen/density_function/overworld/base_continents.json
sed -i 's/"xz_scale": 0.2,/"xz_scale": 0.13,/g' data/minecraft/worldgen/density_function/overworld_large_biomes/base_continents.json


## Remove noise caves:
sed -i 's/"aquifers_enabled": true,/"aquifers_enabled": true,\n\    "noise_caves_enabled": false,/g' data/minecraft/worldgen/noise_settings/overworld.json


## Remove lava lakes from vegetation biomes:
# -= Dark Forest =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/dark_forest.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/dark_forest.json
# -= Forest =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/forest.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/forest.json
# -= Taiga =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/taiga.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/taiga.json
# -= Snowy Taiga =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/snowy_taiga.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/snowy_taiga.json
