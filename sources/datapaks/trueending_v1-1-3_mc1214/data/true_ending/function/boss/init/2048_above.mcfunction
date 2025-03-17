

execute store result score temp_health trueEnding_health_extra run data get entity @s Health
execute store result score @s trueEnding_health_extra run scoreboard players get dragonhealth trueEnding_settings

#calculate extra health
    #subtracts settings health by 1024 to calculate extra
scoreboard players operation @s trueEnding_health_extra -= temp_health trueEnding_health_extra

#set extra health as extra bossbar max
execute store result bossbar true_ending:extra_health max run scoreboard players get @s trueEnding_health_extra

#bossbar set true_ending:extra_health max 1024

bossbar set true_ending:extra_health visible true
execute positioned 0 80 0 run bossbar set true_ending:extra_health players @a[distance=..128]






