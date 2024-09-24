tag @s add nvr.quest.set
execute unless predicate nvr:percentages/10 run return fail

execute store result storage nvr:villager uuid_0 int 1 run data get entity @s UUID[0]
execute store result storage nvr:villager uuid_1 int 1 run data get entity @s UUID[1]
execute store result storage nvr:villager uuid_2 int 1 run data get entity @s UUID[2]
execute store result storage nvr:villager uuid_3 int 1 run data get entity @s UUID[3]

#scoreboard players set @s nvr.quest.item.count 64
execute store result score @s nvr.quest.item.count run random value 32..64
execute store result storage nvr:villager item_count int 1 run scoreboard players get @s nvr.quest.item.count

function nvr:quest/get_item
function nvr:quest/modify_villager with storage nvr:villager