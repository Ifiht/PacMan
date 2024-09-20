#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Rainzy. #
# Function was updated by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#

#=============Config==============#
# These support commands check if a manual config has been set, and if not will set to default.
#=========Difficulty==========#
execute unless score difficulty h-night.config matches -1 run scoreboard players operation difficulty h-nigh.config = #difficulty h-nigh.config
execute if score difficulty h-nigh.config matches -1 store result score #difficulty h-nigh.config run difficulty

#============Days=============#
execute unless score interval h-nigh.config matches -1 unless score #interval h-nigh.config matches -1 run scoreboard players operation interval h-nigh.config = #interval h-nigh.config
execute if score interval h-nigh.config matches -1 unless score #interval h-nigh.config matches -1 run function h-nigh:ref/interval_default


#===========Core Checks===========#
execute if score #day h-nigh.day > #interval h-nigh.config run function h-nigh:ref/day_correction
execute unless score #night h-nigh.day matches 12541.. if score #day h-nigh.day = #interval h-nigh.config run function h-nigh:ref/day_correction

execute store result score #night h-nigh.day run time query daytime
execute if score #night h-nigh.day matches 12542 run scoreboard players add #day h-nigh.day 1
execute if score #day h-nigh.day = #interval h-nigh.config if score #night h-nigh.day matches 0 run scoreboard players set #day h-nigh.day 0
execute if score #night h-nigh.day matches 12542 if score #day h-nigh.day = #interval h-nigh.config as @r run tellraw @a {"translate":"rrc.h-nigh.tellraw.bad_night","fallback":"You start to feel restless as a pit grows in your stomach. Something is... off...","color":"dark_red","bold":true}

execute if score #night h-nigh.day matches 12542 if score #day h-nigh.day = #interval h-nigh.config run scoreboard players set active h-nigh.config 1
execute unless score #day h-nigh.day = #interval h-nigh.config run scoreboard players set active h-nigh.config 0


#==============Mobs===============#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[tag=h-nigh.eligible,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.ignore"]}
execute if score #day h-nigh.day = #interval h-nigh.config as @e[tag=h-nigh.eligible,tag=!h-nigh.mob,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.mob"]}

#======Spawning======#
execute if score #day h-nigh.day = #interval h-nigh.config unless score coward h-nigh.config matches 1 run function h-nigh:ref/tick/mob_spawning

#======Recruit=======#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[tag=h-nigh.mob] at @s run tp @s ~ ~-1000 ~

#=====Zombies====#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[type=#h-nigh:zombies,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.ignore"]}

#====Skeletons===#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[type=#h-nigh:skeletons,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.ignore"]}

#=====Phantom====#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[type=minecraft:phantom,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.ignore"]}

#=====Spider=====#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[type=minecraft:spider,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.ignore"]}

#=====Creeper====#
execute unless score #day h-nigh.day = #interval h-nigh.config as @e[type=minecraft:creeper,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.ignore"]}

execute if score #day h-nigh.day = #interval h-nigh.config run function h-nigh:ref/tick/horde_mobs


#============No Sleep=============#
# These functions make it impossible to sleep during a night, but set the percentage to 50 after the night is over.
execute if score #day h-nigh.day = #interval h-nigh.config if score #night h-nigh.day matches 12543 run gamerule playersSleepingPercentage 200
execute unless score #day h-nigh.day = #interval h-nigh.config run gamerule playersSleepingPercentage 50


#==========Advancements===========#
execute unless score #day h-nigh.day = #interval h-nigh.config as @a run scoreboard players set @s h-nigh.death 0
execute if score #night h-nigh.day matches 23999 if score #day h-nigh.day = #interval h-nigh.config as @a unless score @s h-nigh.cowards matches 1..2 unless score @s h-nigh.death matches 1.. run scoreboard players add @s h-nigh.survived 1
execute as @a if score @s h-nigh.survived matches 1.. run advancement grant @s only h-nigh:long_night
execute as @a if score @s h-nigh.survived matches 100.. run advancement grant @s only h-nigh:many_nights


#=============Effects=============#
execute if score #day h-nigh.day = #interval h-nigh.config run worldborder warning distance 999999999
execute if score #day h-nigh.day matches 0 run worldborder warning distance 10

execute if score #night h-nigh.day matches 12542 if score #day h-nigh.day = #interval h-nigh.config as @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 100 0.7

execute if score #day h-nigh.day = #interval h-nigh.config run kill @e[tag=mo-var.firefly]
execute if score #day h-nigh.day = #interval h-nigh.config run kill @e[tag=mo-var.butterfly]

execute if score #day h-nigh.day = #interval h-nigh.config run scoreboard players add timerPar h-nigh.day 1
execute if score #day h-nigh.day = #interval h-nigh.config if score timerPar h-nigh.day matches 10 as @e[tag=h-nigh.mob] at @s run particle minecraft:angry_villager ~ ~ ~1
execute if score #day h-nigh.day = #interval h-nigh.config if score timerPar h-nigh.day matches 20 as @e[tag=h-nigh.mob] at @s run particle minecraft:angry_villager ~1 ~ ~
execute if score #day h-nigh.day = #interval h-nigh.config if score timerPar h-nigh.day matches 30 as @e[tag=h-nigh.mob] at @s run particle minecraft:angry_villager ~ ~ ~-1
execute if score #day h-nigh.day = #interval h-nigh.config if score timerPar h-nigh.day matches 40 as @e[tag=h-nigh.mob] at @s run particle minecraft:angry_villager ~-1 ~ ~
execute if score #day h-nigh.day = #interval h-nigh.config if score timerPar h-nigh.day matches 50 as @e[tag=h-nigh.mob] at @s run particle minecraft:angry_villager ~ ~2 ~
execute if score #day h-nigh.day = #interval h-nigh.config if score timerPar h-nigh.day matches 51.. as @e[tag=h-nigh.mob] run scoreboard players set timerPar h-nigh.day 0


#=============Coward=============#
execute unless score coward h-nigh.config matches 1 unless score #day h-nigh.day = #interval h-nigh.config as @a run scoreboard players set @s h-nigh.time-slay 0
execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a unless score @s h-nigh.cowards matches 1..2 unless score @s h-nigh.death matches 1.. run scoreboard players add @s h-nigh.time-slay 1
execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a unless score @s h-nigh.cowards matches 1..2 if score @s h-nigh.time-slay matches 2400.. unless score @s h-nigh.death matches 1.. run scoreboard players set @s h-nigh.cowards 1
execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a if score @s h-nigh.cowards matches 1..2 unless score @s h-nigh.death matches 1.. run scoreboard players set @s h-nigh.time-slay 0

execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a[scores={h-nigh.cowards=1}] run tellraw @s {"translate":"rrc.h-nigh.tellraw.coward","fallback":"You have become a coward for this night! Such Shame...","color":"gray","bold":true,"underlined":true}
execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a[scores={h-nigh.cowards=1}] run advancement grant @s only h-nigh:cowards
execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a[scores={h-nigh.cowards=1}] run scoreboard players add @s h-nigh.cowered 1
execute unless score coward h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config as @a[scores={h-nigh.cowards=1}] run scoreboard players set @s h-nigh.cowards 2

execute unless score #day h-nigh.day = #interval h-nigh.config as @a[scores={h-nigh.cowards=1..2}] run scoreboard players set @s h-nigh.cowards 0


#=============Ritual=============#
execute if score #night h-nigh.day matches 23999 if score #day h-nigh.day = #interval h-nigh.config run scoreboard players set used h-nigh.ritual 0

# The rest of the "Ritual" code is in the "sec_loop" file for performance reasons
