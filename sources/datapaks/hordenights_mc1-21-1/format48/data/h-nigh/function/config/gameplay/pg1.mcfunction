#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
tellraw @s {"text":" "}
tellraw @s [{"text":"[Pg1] Gameplay:","color":"aqua"},{"text":" The Blood Moon","color":"gold"}]
tellraw @s {"text":" "}
execute if score #interval h-nigh.config matches -1 run tellraw @s [{"text":"Blood Moon Event:","color":"#8A809F"},{"text":" Disabled","color":"dark_red","bold":true},{"text":" - ","color":"gray","bold":false},{"text":"[Enable]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1/blood_moon/enable"}}]
execute unless score #interval h-nigh.config matches -1 run tellraw @s [{"text":"Blood Moon Event:","color":"#8A809F"},{"text":" Enabled","color":"dark_green","bold":true},{"text":" - ","color":"gray","bold":false},{"text":"[Disable]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1/blood_moon/disable"}}]
tellraw @s {"text":" "}
tellraw @s [{"text":"[Blood Moon Interval]","color":"red","clickEvent":{"action":"suggest_command","value":"/scoreboard players set interval h-nigh.config "}},{"text":" (1 to 2147483647)","color":"gray"},{"text":" Current Rate: 1/"},{"score": {"name": "#interval", "objective": "h-nigh.config"}, "color": "red"},{"text":" [Reset to Default]","color":"red","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1/interval_default"}}]
tellraw @s {"text":" "}
tellraw @s [{"text":"MM","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function h-nigh:config"}},{"text":" ... ","bold":true,"color":"gold"},{"text":"Pg2","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg2"}},{"text":" >>>","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg4"}}]
