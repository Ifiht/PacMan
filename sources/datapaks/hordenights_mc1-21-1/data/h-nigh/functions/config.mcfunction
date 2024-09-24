#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
tellraw @s {"text":" "}
tellraw @s [{"text":"Horde Nights","bold":true,"underlined":true,"color":"#80FF00"},{"text":" ","bold":true,"underlined":false,"color":"dark_green"},{"text":"v1.0.0","bold":true,"underlined":true,"color":"dark_purple"},{"text":" ","bold":true,"underlined":false},{"text":"Config","bold":true,"underlined":true,"color":"yellow"},{"text":" ","bold":true,"underlined":false},{"text":"For 1.20 to 1.20.6","bold":true,"underlined":true,"color":"dark_purple"}]
tellraw @s {"text":" "}

tellraw @s {"text":"Want to Modify the Gameplay?"}
tellraw @s {"text":"[Click Here]","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/gameplay/pg1"}}
tellraw @s {"text":" "}

tellraw @s {"text":"Or change the Visuals..."}
tellraw @s {"text":"[COMING SOON]","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function h-nigh:config/visuals/pg"}}
tellraw @s {"text":" "}