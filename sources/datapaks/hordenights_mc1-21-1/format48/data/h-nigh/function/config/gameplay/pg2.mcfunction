#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
tellraw @s {"text":" "}
tellraw @s [{"text":"[Pg2] Gameplay:","color":"aqua"},{"text":" Cowardice","color":"gold"}]
tellraw @s {"text":" "}
execute if score coward h-nigh.config matches 1 run tellraw @s [{"text":"Cowardice Mechanic:","color":"#8A809F"},{"text":" Disabled","color":"dark_red","bold":true},{"text":" - ","color":"gray","bold":false},{"text":"[Enable]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg2/cowardice/enable"}}]
execute unless score coward h-nigh.config matches 1 run tellraw @s [{"text":"Cowardice Mechanic:","color":"#8A809F"},{"text":" Enabled","color":"dark_green","bold":true},{"text":" - ","color":"gray","bold":false},{"text":"[Disable]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg2/cowardice/disable"}}]
tellraw @s {"text":" "}
tellraw @s [{"text":"MM","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function h-nigh:config"}},{"text":" "},{"text":"Pg1","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1"}},{"text":" ... ","bold":true,"color":"gold"},{"text":"Pg3","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg3"}},{"text":" >>>","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg4"}}]
