execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_desert_type] run function nvr:names/get_data/desert
execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_jungle_type] run function nvr:names/get_data/jungle
execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_plains_type] run function nvr:names/get_data/plains
execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_savanna_type] run function nvr:names/get_data/savanna
execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_snow_type] run function nvr:names/get_data/snow
execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_swamp_type] run function nvr:names/get_data/swamp
execute as @e[type=villager,tag=!nvr.name.set,predicate=nvr:entity/is_taiga_type] run function nvr:names/get_data/taiga

execute as @e[type=wandering_trader,tag=!nvr.name.set] run function nvr:names/get_data/wandering_trader