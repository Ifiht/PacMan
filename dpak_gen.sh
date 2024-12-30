#!/bin/env bash

## Remove BS Windows metafiles
find . -name "*:Zone.Identifier" -type f -delete

## Remove data dir & recreate
rm -rf data
mkdir data

## Sync sources with data, first here is "last" to load, ones farther down will overwrite
# https://modrinth.com/plugin/tooltrims ; trims for tools ;)
rsync -avh ./sources/datapaks/tooltrims_v2-2-2a/data/ ./data/
# https://modrinth.com/datapack/incendium ; terralith for the Nether
rsync -avh ./sources/datapaks/incendium_v5-4-3/data/ ./data/
# https://modrinth.com/datapack/terralith
rsync -avh ./sources/datapaks/terralith_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/fancier-mansions
rsync -avh ./sources/datapaks/fancyman_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/nullscape ; terralith for the End
rsync -avh ./sources/datapaks/nullscape_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/true-ending
rsync -avh ./sources/datapaks/trueending_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/qraftys-mushroom-villages
rsync -avh ./sources/datapaks/qraftyshroom_mc1-21-1/data/ ./data/
## https://modrinth.com/datapack/tectonic
rsync -avh ./sources/datapaks/terratonic_v3-2/data/ ./data/
# https://modrinth.com/datapack/william-wythers-overhauled-overworld-(datapack)
#>> only the dark forest (-_-)
rsync -avh ./sources/datapaks/wwoo_mc1-21-0/data/wythers ./data/
rsync -avh ./sources/datapaks/wwoo_mc1-21-0/data/lithosphere ./data/
rsync -avh ./sources/datapaks/wwoo_mc1-21-0/data/towns_and_towers ./data/
rsync -avh ./sources/datapaks/wwoo_mc1-21-0/1-21-overlay/data/wythers/ ./data/wythers/
rsync -avh ./sources/datapaks/wwoo_mc1-21-0/1-21-overlay/data/minecraft/worldgen/biome/dark_forest.json ./data/minecraft/worldgen/biome/
# https://modrinth.com/datapack/continents
rsync -avh ./sources/datapaks/continents_mc1-21-1/data/ ./data/
# https://modrinth.com/datapack/spawn-animations
rsync -avh ./sources/datapaks/spawnanims_v1-10/data/ ./data/
rsync -avh ./sources/datapaks/spawnanims_v1-10/data/overlay_33/data/ ./data/
# https://modrinth.com/datapack/nice-villagers-remastered
rsync -avh ./sources/datapaks/nicevillagers_mc1-21-1/data/ ./data/
### always keep custom changes last..
rsync -avh ./sources/datapaks/custom_overlay_mc1-21-1/data/ ./data/

## Make continents larger:
sed -i 's/"xz_scale": 0.13,/"xz_scale": 0.08,/g' data/minecraft/worldgen/density_function/overworld/base_continents.json
sed -i 's/"xz_scale": 0.2,/"xz_scale": 0.12,/g' data/minecraft/worldgen/density_function/overworld_large_biomes/base_continents.json

## Overworld Noise Settings
# Remove noise caves:
sed -i 's/"aquifers_enabled": true,/"aquifers_enabled": true,\n\    "noise_caves_enabled": false,/g' data/minecraft/worldgen/noise_settings/overworld.json
# Fix noise height:
sed -i 's/"height": 384,/"height": 480,/g' data/minecraft/worldgen/noise_settings/overworld.json

## Remove lava lakes from vegetation biomes:
# (( MINECRAFT BIOMES ))
# -= Cherry Grove =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/cherry_grove.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/cherry_grove.json
# -= Dark Forest =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/dark_forest.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/dark_forest.json
# -= Flower Forest =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/flower_forest.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/flower_forest.json
# -= Forest =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/forest.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/forest.json
# -= Meadow =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/meadow.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/meadow.json
# -= Taiga =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/taiga.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/taiga.json
# -= Snowy Taiga =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/snowy_taiga.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/snowy_taiga.json
# -= Old Growth Forests =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/old_growth_birch_forest.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/old_growth_birch_forest.json
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/old_growth_pine_taiga.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/old_growth_pine_taiga.json
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/minecraft/worldgen/biome/old_growth_spruce_taiga.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/minecraft/worldgen/biome/old_growth_spruce_taiga.json
# (( TERRALITH BIOMES ))
# -= Sakura Grove =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/sakura_grove.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/sakura_grove.json
# -= Sakura Grove =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/sakura_valley.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/sakura_valley.json
# -= Skylands Spring =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/skylands_spring.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/skylands_spring.json
# -= Skylands Summer =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/skylands_summer.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/skylands_summer.json
# -= Skylands Autumn =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/skylands_autumn.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/skylands_autumn.json
# -= Skylands Winter =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/skylands_winter.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/skylands_winter.json
# -= Cold Shrubland =-
sed -i '/^.*"minecraft:lake_lava_surface".*/d' data/terralith/worldgen/biome/cold_shrubland.json
sed -i 's/"minecraft:lake_lava_underground",/"minecraft:lake_lava_underground"/g' data/terralith/worldgen/biome/cold_shrubland.json


#========== REMOVE TICK.JSON =============#
if [ -f data/minecraft/tags/function/tick.json ]; then
    echo "WARNING: MC 1.21.x tick hooks found"
    rm -f data/minecraft/tags/function/tick.json
fi
if [ -d data/minecraft/tags/functions ]; then
    echo "WARNING: MC pre-1.21 directories found"
    rm -rf data/minecraft/tags/functions
fi
