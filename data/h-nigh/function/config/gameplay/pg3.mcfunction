#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
tellraw @s {"text":" "}
tellraw @s [{"text":"[Pg3] Gameplay:","color":"aqua"},{"text":" The Blood Ritual","color":"gold"}]
tellraw @s {"text":" "}
execute if score ritual_toggle h-nigh.config matches 1 run tellraw @s [{"text":"Blood Ritual Mechanic:","color":"#8A809F"},{"text":" Disabled","color":"dark_red","bold":true},{"text":" - ","color":"gray","bold":false},{"text":"[Enable]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg3/blood_ritual/enable"}}]
execute unless score ritual_toggle h-nigh.config matches 1 run tellraw @s [{"text":"Blood Ritual Mechanic:","color":"#8A809F"},{"text":" Enabled","color":"dark_green","bold":true},{"text":" - ","color":"gray","bold":false},{"text":"[Disable]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg3/blood_ritual/disable"}}]
tellraw @s {"text":" "}
tellraw @s [{"text":"<<<","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1"}},{"text":" "},{"text":"Pg2","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg2"}},{"text":" ... ","bold":true,"color":"gold"},{"text":"Pg4","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg4"}}]
tellraw @s {"text":"[Go Back to Main Config Menu]","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function h-nigh:config"}}
