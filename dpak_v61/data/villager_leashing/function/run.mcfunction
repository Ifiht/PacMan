advancement revoke @s only villager_leashing:leash_villager
tag @s add leash_attempt
execute anchored eyes positioned ^ ^ ^0.5 as @n[type=villager,tag=eden.not.leashed] run function villager_leashing:leash
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand eden:used_item

tag @s remove leash_attempt