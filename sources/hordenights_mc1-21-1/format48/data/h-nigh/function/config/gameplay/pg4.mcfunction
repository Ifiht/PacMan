#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
tellraw @s {"text":" "}
tellraw @s [{"text":"[Pg4] Gameplay:","color":"aqua"},{"text":" The Difficulty","color":"gold"}]
tellraw @s {"text":" "}
execute if score difficulty h-nigh.config matches -1 run tellraw @s {"text":"Difficulty is Default(based on MC Difficulty)"}
execute if score difficulty h-nigh.config matches 0 run tellraw @s {"text":"Difficulty is Peaceful"}
execute if score difficulty h-nigh.config matches 1 run tellraw @s {"text":"Difficulty is Easy"}
execute if score difficulty h-nigh.config matches 2 run tellraw @s {"text":"Difficulty is Normal"}
execute if score difficulty h-nigh.config matches 3 run tellraw @s {"text":"Difficulty is Hard"}
execute if score difficulty h-nigh.config matches 4 run tellraw @s {"text":"Difficulty is Extreme"}
tellraw @s {"text":" "}
tellraw @s [{"text":"[Set Difficulty]","color":"red","clickEvent":{"action":"suggest_command","value":"/scoreboard players set difficulty h-nigh.config "}},{"text":" (1 to 4)","color":"gray"},{"text":" [Reset to Default]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set difficulty h-nigh.config -1"}}]
tellraw @s {"text":" "}
tellraw @s [{"text":"<<<","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1"}},{"text":" "},{"text":"Pg3","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg3"}},{"text":" ... ","bold":true,"color":"gold"},{"text":"COMING SOON!!!","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg5"}}]
tellraw @s {"text":"[Go Back to Main Config Menu]","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function h-nigh:config"}}