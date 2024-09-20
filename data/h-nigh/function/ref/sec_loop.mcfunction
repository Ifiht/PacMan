#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#

# Please note that every command in this file ONLY runs every second because of the performance toll when scaling said commands
# This is to ensure that Horde Nights doesn't cause performance issues when paired with other packs. Sensical limits have also
# Been put into place, further improving the performance impact.


#=============Ritual=============#
execute if score ritual_toggle h-nigh.config matches 1 at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run tellraw @a[limit=1,sort=nearest] {"translate":"rrc.h-nigh.tellraw.ritual.disabled","fallback":"The Blood Ritual is disabled. Contact your server admin if this is a mistake.","color":"dark_red","bold":true}

execute unless score ritual_toggle h-nigh.config matches 1 unless score #day h-nigh.day = #interval h-nigh.config unless score #night h-nigh.day matches 12542.. unless score used h-nigh.ritual matches 1 at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run function h-nigh:ref/day_correction
execute unless score ritual_toggle h-nigh.config matches 1 unless score #day h-nigh.day = #interval h-nigh.config unless score #night h-nigh.day matches 12542.. unless score used h-nigh.ritual matches 1 at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run tellraw @a {"translate":"rrc.h-nigh.tellraw.ritual.used","fallback":"An ominous feeling rushes down your back...","color":"dark_red","bold":true}
execute unless score ritual_toggle h-nigh.config matches 1 unless score #day h-nigh.day = #interval h-nigh.config unless score #night h-nigh.day matches 12542.. unless score used h-nigh.ritual matches 1 at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run function h-nigh:ref/sec_loop/use_ritual_cleanup

execute unless score ritual_toggle h-nigh.config matches 1 if score #day h-nigh.day = #interval h-nigh.config at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s h-nigh.ritual_reject 1
execute unless score ritual_toggle h-nigh.config matches 1 if score #night h-nigh.day matches 12542.. at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s h-nigh.ritual_reject 1
execute unless score ritual_toggle h-nigh.config matches 1 if score used h-nigh.ritual matches 1 at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s h-nigh.ritual_reject 1
execute if score ritual_toggle h-nigh.config matches 1 at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire run scoreboard players set @s h-nigh.ritual_reject 2

execute at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire if score @s h-nigh.ritual_reject matches 1 run tellraw @a {"translate":"rrc.h-nigh.tellraw.ritual.rejected","fallback":"Your sacrifice is not required...","color":"dark_red","bold":true}
execute at @a as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},distance=..10] at @s if block ~ ~ ~ minecraft:soul_campfire if score @s h-nigh.ritual_reject matches 1.. run tp @s ~ ~1 ~1

scoreboard objectives remove h-nigh.ritual_reject
scoreboard objectives add h-nigh.ritual_reject dummy

schedule function h-nigh:ref/sec_loop 1s replace
