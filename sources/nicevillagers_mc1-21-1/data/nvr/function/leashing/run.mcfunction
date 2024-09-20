advancement revoke @s only nvr:leash_villager
tag @s add leash_attempt
execute anchored eyes positioned ^ ^ ^0.5 as @n[type=villager,tag=nvr.not.leashed] run function nvr:leashing/leash
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand nvr:used_item
advancement grant @s only nvr:progression/leashed
tag @s remove leash_attempt