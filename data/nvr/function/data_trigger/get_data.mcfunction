
data modify storage nvr:villager count_0 set from entity @n[type=minecraft:villager,distance=..12] Inventory[0].count
data modify storage nvr:villager count_1 set from entity @n[type=minecraft:villager,distance=..12] Inventory[1].count
data modify storage nvr:villager count_2 set from entity @n[type=minecraft:villager,distance=..12] Inventory[2].count
data modify storage nvr:villager count_3 set from entity @n[type=minecraft:villager,distance=..12] Inventory[3].count
data modify storage nvr:villager count_4 set from entity @n[type=minecraft:villager,distance=..12] Inventory[4].count
data modify storage nvr:villager count_5 set from entity @n[type=minecraft:villager,distance=..12] Inventory[5].count
data modify storage nvr:villager count_6 set from entity @n[type=minecraft:villager,distance=..12] Inventory[6].count
data modify storage nvr:villager count_7 set from entity @n[type=minecraft:villager,distance=..12] Inventory[7].count

data modify storage nvr:villager id_0 set from entity @n[type=minecraft:villager,distance=..12] Inventory[0].id
data modify storage nvr:villager id_1 set from entity @n[type=minecraft:villager,distance=..12] Inventory[1].id
data modify storage nvr:villager id_2 set from entity @n[type=minecraft:villager,distance=..12] Inventory[2].id
data modify storage nvr:villager id_3 set from entity @n[type=minecraft:villager,distance=..12] Inventory[3].id
data modify storage nvr:villager id_4 set from entity @n[type=minecraft:villager,distance=..12] Inventory[4].id
data modify storage nvr:villager id_5 set from entity @n[type=minecraft:villager,distance=..12] Inventory[5].id
data modify storage nvr:villager id_6 set from entity @n[type=minecraft:villager,distance=..12] Inventory[6].id
data modify storage nvr:villager id_7 set from entity @n[type=minecraft:villager,distance=..12] Inventory[7].id

data modify storage nvr:villager name set from entity @n[type=minecraft:villager,distance=..12] CustomName
data modify storage nvr:villager restockstoday set from entity @n[type=minecraft:villager,distance=..12] RestocksToday
data modify storage nvr:villager xp set from entity @n[type=minecraft:villager,distance=..12] Xp
data modify storage nvr:villager profession set from entity @n[type=minecraft:villager,distance=..12] VillagerData.profession
data modify storage nvr:villager level set from entity @n[type=minecraft:villager,distance=..12] VillagerData.level

data modify storage nvr:villager job_x set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:job_site.value.pos[0]
data modify storage nvr:villager job_y set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:job_site.value.pos[1]
data modify storage nvr:villager job_z set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:job_site.value.pos[2]

data modify storage nvr:villager home_x set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:home.value.pos[0]
data modify storage nvr:villager home_y set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:home.value.pos[1]
data modify storage nvr:villager home_z set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:home.value.pos[2]

data modify storage nvr:villager meeting_x set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage nvr:villager meeting_y set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage nvr:villager meeting_z set from entity @n[type=minecraft:villager,distance=..12] Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage nvr:villager x int 1 run data get entity @n[type=minecraft:villager,distance=..12] Pos[0]
execute store result storage nvr:villager y int 1 run data get entity @n[type=minecraft:villager,distance=..12] Pos[1]
execute store result storage nvr:villager z int 1 run data get entity @n[type=minecraft:villager,distance=..12] Pos[2]

execute if entity @n[type=minecraft:villager,distance=..12] run function nvr:data_trigger/display_msg with storage nvr:villager
effect give @n[type=minecraft:villager,distance=..12] minecraft:glowing 11 0 true
scoreboard players set @s villager_data 0