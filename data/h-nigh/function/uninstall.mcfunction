#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#

# Remove all backend scoreboards related to the pack
scoreboard objectives remove h-nigh.day
scoreboard objectives remove h-nigh.vfx_random
scoreboard objectives remove h-nigh.death
scoreboard objectives remove h-nigh.survived
scoreboard objectives remove h-nigh.config
tellraw @a {"text":"Backend Scoreboards Removed","color":"red"}


# Remove all statistic scoreboards related to the pack
scoreboard objectives remove h-nigh.uni-stat
scoreboard objectives remove h-nigh.zomb-stat
scoreboard objectives remove h-nigh.zomb_vill-stat
scoreboard objectives remove h-nigh.zomb-pig-stat
scoreboard objectives remove h-nigh.husk-stat
scoreboard objectives remove h-nigh.drow-stat
scoreboard objectives remove h-nigh.spid-stat
scoreboard objectives remove h-nigh.phantom-stat
scoreboard objectives remove h-nigh.skeli-stat
scoreboard objectives remove h-nigh.stray-stat
scoreboard objectives remove h-nigh.cowered
tellraw @a {"text":"Statistic Scoreboard Removed","color":"red"}

# Fix gameplay mechanics
gamerule playersSleepingPercentage 100
tellraw @a {"text":"Sleeping Percentage Gamerule set to 100%","color":"red"}
worldborder warning distance 10
tellraw @a {"text":"World Boarder Warning Distance set to Default (10)","color":"red"}





tellraw @a {"text":"Horde Nights - By: Rainy Realm Create - Sucessfully Uninstalled","color":"red"}