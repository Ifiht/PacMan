execute as @e[type=villager,tag=!eden.not.leashed] unless data entity @s leash.UUID run tag @s add eden.not.leashed

schedule function villager_leashing:add_tag 10t