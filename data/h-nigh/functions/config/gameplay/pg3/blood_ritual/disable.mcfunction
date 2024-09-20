#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
execute unless score used h-nigh.ritual matches 1 run scoreboard players set ritual_toggle h-nigh.config 1
execute if score used h-nigh.ritual matches 1 run tellraw @s {"text":"Failed To Disable Blood Ritual: Cannot disable while awaiting/playing a ritual activated Blood Moon."}

function h-nigh:config/gameplay/pg3