#!/bin/bash

## Remove BS Windows metafiles
find . -name "*:Zone.Identifier" -type f -delete

## Remove data dir & recreate
rm -rf data
mkdir data

## Sync sources with data, first here is "last" to load, ones farther down will overwrite
# https://modrinth.com/datapack/incendium ; terralith for the Nether
rsync -avhc ./sources/datapaks/incendium_v5-4-4_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/incendium_v5-4-4_mc1214/1-21-4-overlay/data/ ./data/
rm -rf ./data/minecraft/recipe
rm -rf ./data/minecraft/loot_table
rm -rf ./data/minecraft/tags/block
rm -rf ./data/minecraft/tags/damage_type
rm -rf ./data/minecraft/tags/function
# https://modrinth.com/datapack/nullscape ; terralith for the End
rsync -avhc ./sources/datapaks/nullscape_v1-2-10_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nullscape_v1-2-10_mc1214/1-21-2-overlay/data/ ./data/
rsync -avhc ./sources/datapaks/nullscape_v1-2-10_mc1214/1-21-4-overlay/data/ ./data/
# https://modrinth.com/datapack/true-ending
#rsync -avhc ./sources/datapaks/trueending_mc1-21-1/data/ ./data/
# Grand Capitals
rsync -avhc ./sources/datapaks/luki_grandcapitals_v1-1-1_mc1214/data/ ./data/
# https://modrinth.com/datapack/terralith
rsync -avhc ./sources/datapaks/terralith_v2-5-8_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/terralith_v2-5-8_mc1214/1-21-2-overlay/data/ ./data/
rsync -avhc ./sources/datapaks/terralith_v2-5-8_mc1214/1-21-4-overlay/data/ ./data/
# https://modrinth.com/datapack/tectonic
#rsync -avhc ./sources/datapaks/tectonic_v2-4-2_mc1214/data/ ./data/
# https://modrinth.com/datapack/terratonic
rsync -avhc ./sources/datapaks/terratonic_v3-2_mc1214/data/ ./data/
# https://modrinth.com/datapack/qraftys-mushroom-villages
rsync -avhc ./sources/datapaks/qrafty_shroomvillage_mc1214/data/ ./data/
# https://modrinth.com/datapack/qraftys-archeology-dig-sites
rsync -avhc ./sources/datapaks/qrafty_digsites_mc1214/data/ ./data/
# NV Packs
rsync -avhc ./sources/datapaks/nv_nitwitquests_v1-1_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nv_talkingvillager_v1-1_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nv_villagenames_v1-4b_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nv_villagerleashing_v1-1_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nv_villagernames_v1-2_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nv_wandtraderannounce_v1-1_mc1214/data/ ./data/
rsync -avhc ./sources/datapaks/nv_wandtradertrades_v1-2_mc1214/data/ ./data/
# YUNG's betters
#rsync -avhc ./sources/datapaks/yungs_better_mc1214/data/ ./data/
# https://modrinth.com/plugin/tooltrims ; trims for tools ;)
rsync -avhc ./sources/datapaks/tooltrims_dp_v2-3-0a_mc1214/data/ ./data/
### always keep custom changes last..
rsync -avhc ./sources/datapaks/custom_overlay_mc1214/data/ ./data/

## Make continents larger:
#sed -i 's/"xz_scale": 0.13,/"xz_scale": 0.08,/g' data/minecraft/worldgen/density_function/overworld/base_continents.json
#sed -i 's/"xz_scale": 0.2,/"xz_scale": 0.12,/g' data/minecraft/worldgen/density_function/overworld_large_biomes/base_continents.json

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
