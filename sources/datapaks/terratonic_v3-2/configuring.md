# Configuring Terratonic

The mod version of Terratonic uses a regular config file to allow certain aspects of the pack to be configurable. Datapacks can't have config files, so you'll need to get into the files yourself to change things.

Everything that is configurable in the mod version can be configured by modifying a file in `data/tectonic/worldgen/density_function/constants`.

All guides below here will assume you are already in the previously specified folder.

## Disabling Terrain Features

Deeper oceans, desert dunes, underground rivers and lava rivers can all be toggled on and off. 

Mountain ranges and smoother terrain are too critical to the underlying infrastructure of the pack to be able to be toggled.

### Deeper Oceans

- Open `deep_ocean_depth.json`. Change -0.45 to -0.22.
- Open `ocean_depth.json`. Change -0.15 to -0.12.

### Desert Dunes

- Open `desert_dunes.json`. Change 1 to 0.

### Underground Rivers

- Open `underground_river_multiplier.json`. Change -2 to 0.
- Open `underground_river_toggle.json`. Change 1 to 0.

### Lava Rivers

- Open `lava_rivers.json`. Change 1 to 0.

## Increasing Terrain Scaling

### Horizontal Mountain Scaling

Horizontal mountain scaling determines how far away mountain ranges are from one another and how wide/large they are.

- Open `erosion_noise`. Change 0.25 to another number. Smaller numbers mean larger scale (wider/larger mountains and more space between mountains). 0.15-0.25 is the sweet spot.

### Terrain Scale

Terrain scale is simply a multiplier on how high terrain generates from the sea level. Higher number means more extreme terrain heights.

Terrain depth caps out at y -32 or so to make sure oceans still function at all on high terrain scales.

- Open `terrain_scale`. Change 1.125 to another number. Don't change this number too significant (Increment it in at max increments of 0.5)

## Enabling Increased Terrain Height

Toggling on increased terrain height will increase the build and generation height of the Overworld to y640.

> ⚠️ **Don't add this onto an existing world! y320 to y640 in all existing chunks will become the Plains biome.**

- Go to the root folder of the datapack and open `pack.mcmeta`. Change `overlays_disabled` to `overlays`.