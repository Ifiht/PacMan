tag @s remove 310_place_toolsmithing_table

# set the scoreboards
scoreboard objectives add 310_count dummy
scoreboard objectives add 310_recipe dummy

scoreboard objectives add 310_slot_update dummy
scoreboard players set @s 310_slot_update 1
scoreboard objectives add 310_slot_timer dummy

scoreboard objectives add 310_operation dummy
scoreboard players set .310_40 310_operation 40
scoreboard objectives add 310_combination dummy
scoreboard objectives add 310_template dummy

# place the barrel and setup the armor stand
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:rabbit_spawn_egg", Count:1b, tag:{CustomModelData:314001}}], HandItems:[{id: "minecraft:structure_block", Count: 1b, tag:{CustomModelData:312002}}, {}]} 
setblock ~ ~ ~ barrel{Items:[{Slot:26b, id:"minecraft:structure_block", Count:1b, tag:{CustomModelData:312001, gui:1b, display:{Name:'{"text":""}'}}}]}
function tooltrims:toolsmithing_table/slots_open_update

# detect if the entity is outside of the height limit
execute if block ~ ~ ~ barrel run tag @s add 320_barrel_detected
execute unless entity @s[tag=320_barrel_detected] run function tooltrims:toolsmithing_table/placement/check_stop

# set tags and play sound
execute at @s if entity @s[tag=320_barrel_detected] run playsound block.wood.place block @a[distance=..10] ~ ~ ~
tag @s remove 320_barrel_detected
tag @s add 310_toolsmithing_table