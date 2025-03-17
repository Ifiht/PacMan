
#splits the dragon health value between the main dragon health bar and the extra health bar

execute store result score @s trueEnding_health_extra run scoreboard players get dragonhealth trueEnding_settings
scoreboard players operation @s trueEnding_health_extra /= 2 trueEnding_constants

#proportionate
execute store result entity @s Health float 1 run scoreboard players get @s trueEnding_health_extra
execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 1 run scoreboard players get @s trueEnding_health_extra





#set extra health as bossbar max
execute store result bossbar true_ending:extra_health max run scoreboard players get @s trueEnding_health_extra

#bossbar set true_ending:extra_health max 1024

bossbar set true_ending:extra_health visible true
execute positioned 0 80 0 run bossbar set true_ending:extra_health players @a[distance=..128]











