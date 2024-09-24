#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Rainzy. #
#=Function was updated by Bowswa.=#
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
scoreboard objectives add rrc.init dummy
scoreboard players add h-nigh rrc.init 0
execute unless score h-nigh rrc.init matches 2 run function h-nigh:ref/init

scoreboard players add #night h-nigh.night 0
scoreboard players add daycount h-nigh.day 0

schedule function h-nigh:ref/sec_loop 1s replace

schedule function h-nigh:ref/tellraw/load 1s