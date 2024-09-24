advancement revoke @s only nvr:type_changer/swamp
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand nvr:used_item
execute at @n[type=villager,nbt={VillagerData: {profession:"minecraft:none"}}] run particle minecraft:happy_villager ~ ~1.2 ~ .3 .3 .3 0.5 10

execute unless predicate nvr:percentages/5 run return fail
advancement grant @s only nvr:progression/changed_type
data modify entity @n[type=villager,nbt={VillagerData: {profession:"minecraft:none"}}] VillagerData.type set value "minecraft:swamp"
execute at @n[type=villager,nbt={VillagerData: {profession:"minecraft:none"}}] run particle minecraft:poof ~ ~1 ~ .5 1 .5 0 50 normal
tag @n[type=villager,nbt={VillagerData: {profession:"minecraft:none"}}] remove nvr.name.set