tag @s add eden.quest.set

execute store result storage eden:villager uuid_0 int 1 run data get entity @s UUID[0]
execute store result storage eden:villager uuid_1 int 1 run data get entity @s UUID[1]
execute store result storage eden:villager uuid_2 int 1 run data get entity @s UUID[2]
execute store result storage eden:villager uuid_3 int 1 run data get entity @s UUID[3]

#scoreboard players set @s eden.quest.item.count 64
execute store result score @s eden.quest.item.count run random value 32..64
execute store result storage eden:villager item_count int 1 run scoreboard players get @s eden.quest.item.count

function nitwit_quests:get_item
function nitwit_quests:modify_villager with storage eden:villager