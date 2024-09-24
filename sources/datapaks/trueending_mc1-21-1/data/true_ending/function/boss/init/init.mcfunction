
particle dragon_breath ~ ~ ~ 0 0 0 1 140 force @a[distance=..256]
particle dragon_breath ~ ~ ~ 0 0 0 2 140 force @a[distance=..256]

item replace entity @s weapon.mainhand with totem_of_undying

tag @s remove trueEnding_inattack

scoreboard players reset @s trueEnding_health_extra
scoreboard players reset @s trueEnding_health_extra_max


execute store result entity @s attributes[{id:"minecraft:generic.max_health"}].base double 1 run scoreboard players get dragonhealth trueEnding_settings
execute store result entity @s Health float 1 run scoreboard players get dragonhealth trueEnding_settings

#if between 1025 and 2048 health
execute if score dragonhealth trueEnding_settings matches 1025..2048 run function true_ending:boss/init/1024_2048_make_bossbars_proportionate

#if above 2048 health
execute if score dragonhealth trueEnding_settings matches 2049.. run function true_ending:boss/init/2048_above

#store max actual
execute store result score @s trueEnding_health_max run data get entity @s attributes[{id:"minecraft:generic.max_health"}].base
execute store result score @s trueEnding_health_extra_max run scoreboard players get @s trueEnding_health_extra



#vanilla refresh compatibility
execute store result score @s refresh_maxhealth run scoreboard players get dragonhealth trueEnding_settings
tag @s add refresh_entity_exists
execute if score @s trueEnding_health_max matches 1025.. run scoreboard players set @s trueEnding_health_max 1024





attribute @s generic.knockback_resistance base set 300

kill @e[type=marker,tag=trueEnding_endspike]
kill @e[type=phantom,tag=trueEnding_guardphantom]

execute positioned 42 110 0 run function true_ending:boss/phantom/summon_marker
execute positioned 33 110 -25 run function true_ending:boss/phantom/summon_marker
execute positioned 12 110 -40 run function true_ending:boss/phantom/summon_marker
execute positioned -13 110 -40 run function true_ending:boss/phantom/summon_marker
execute positioned -34 110 -25 run function true_ending:boss/phantom/summon_marker

execute positioned -42 110 -1 run function true_ending:boss/phantom/summon_marker
execute positioned -34 110 24 run function true_ending:boss/phantom/summon_marker
execute positioned -13 110 39 run function true_ending:boss/phantom/summon_marker
execute positioned 12 110 39 run function true_ending:boss/phantom/summon_marker
execute positioned 33 110 24 run function true_ending:boss/phantom/summon_marker



scoreboard players set @s trueEnding_bosstime 218

tag @s add trueEnding_dragon_particlechecked



