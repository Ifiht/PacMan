# PacMan
Merge all the Minecraft Packs :package:  
:basecamp: world [repo](https://github.com/Ifiht/Ithavollr)

## Usage
This repo contains two scripts, `dpak_gen.sh` & `rpak_gen.sh` for datapacks and resourcepacks respectively, that work their way through all the sources specified, and overlay them on eachother to create one monolithic data folder and assets folder that 
1. solves the issue of loading order for SpigotMC servers, and
2. allows for precise editing and changing from a known state.

It also allows for easy updating, as soon as a new datapack version comes out, just update the sources folder with the new version, change the name in the script, and re-generate!
