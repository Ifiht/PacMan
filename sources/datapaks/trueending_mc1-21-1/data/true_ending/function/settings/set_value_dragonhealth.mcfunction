
execute if score @s trueEnding_settings.dragonhealth matches ..4096 store result score dragonhealth trueEnding_settings run scoreboard players get @s trueEnding_settings.dragonhealth
execute if score @s trueEnding_settings.dragonhealth matches 4097.. run tellraw @s {"text":"Health value cannot be higher than 4096","color": "red"}


execute if score @s trueEnding_settings.dragonhealth matches ..4096 run function true_ending:_settings
execute if score @s trueEnding_settings.dragonhealth matches ..4096 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute if score @s trueEnding_settings.dragonhealth matches ..4096 run tag @e[type=ender_dragon] remove trueEnding_dragon_particlechecked

execute if score dragonhealth trueEnding_settings matches ..1024 run bossbar set true_ending:extra_health players



scoreboard players reset @s trueEnding_settings.dragonhealth
