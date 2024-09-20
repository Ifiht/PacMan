function nvr:quest/run
function nvr:gossip_modifier/chest_opened

execute as @e[type=marker,tag=village.name] at @s if predicate nvr:percentages/25 run particle minecraft:wax_on ~ ~.5 ~ .3 .2 .3 .5 2
execute as @e[type=wandering_trader,tag=nvr.illusioner] at @s run particle dust_color_transition{from_color:[0.200,0.573,1.000],scale:0.7,to_color:[0.820,1.000,1.000]} ~ ~1 ~ .4 1 .4 .5 2
execute as @e[type=villager,tag=!nvr.not.leashed] unless data entity @s leash.UUID run tag @s add nvr.not.leashed

schedule function nvr:schedules/10t 10t