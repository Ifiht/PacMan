#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
execute unless score active h-nigh.config matches 1 run scoreboard players set #interval h-nigh.config -1
execute if score active h-nigh.config matches 1 run tellraw @s {"text":"Failed To Disable Blood Moons: Cannot disable during active Blood Moon Event."}

function h-nigh:config/gameplay/pg1