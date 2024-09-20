#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#
# the scoreboard used for all "time" related values
scoreboard objectives add h-nigh.day dummy
scoreboard players add #night h-nigh.day 0
scoreboard players add #day h-nigh.day 0

# the socoreboard used for random visual effects
scoreboard objectives add h-nigh.vfx_random dummy


# for the config
scoreboard objectives add h-nigh.config dummy
execute unless score difficulty h-nigh.config = difficulty h-nigh.config run scoreboard players set difficulty h-nigh.config -1
execute unless score interval h-nigh.config = interval h-nigh.config run scoreboard players set interval h-nigh.config -1

# sets default config values
scoreboard players set installed h-nigh.config 1
scoreboard players set ritual_toggle h-nigh.config 1


# Ritual
scoreboard objectives add h-nigh.ritual_reject dummy
scoreboard objectives add h-nigh.ritual dummy

# Sets default values
scoreboard players add used h-nigh.ritual 0


scoreboard objectives add h-nigh.death deathCount
scoreboard objectives add h-nigh.cowards dummy
scoreboard objectives add h-nigh.time-slay dummy


# Stat based scoreboards
scoreboard objectives add h-nigh.uni-stat dummy {"translate":"rrc.h-nigh.statistic.hord_slay","fallback":"Horde Mobs Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.zomb-stat dummy {"translate":"rrc.h-nigh.statistic.zomb_slay","fallback":"Horde Zombies Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.zomb_vill-stat dummy {"translate":"rrc.h-nigh.statistic.zomb_vill_slay","fallback":"Horde Zombie Villagers Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.zomb-pig-stat dummy {"translate":"rrc.h-nigh.statistic.zomb_pig_slay","fallback":"Horde Zombified Piglins Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.husk-stat dummy {"translate":"rrc.h-nigh.statistic.husk_slay","fallback":"Horde Husks Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.drow-stat dummy {"translate":"rrc.h-nigh.statistic.drow_slay","fallback":"Horde Drowned Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.spid-stat dummy {"translate":"rrc.h-nigh.statistic.spid_slay","fallback":"Horde Spiders Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.phantom-stat dummy {"translate":"rrc.h-nigh.statistic.phantom_slay","fallback":"Horde Phantoms Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.skeli-stat dummy {"translate":"rrc.h-nigh.statistic.skeli_slay","fallback":"Horde Skeletons Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.stray-stat dummy {"translate":"rrc.h-nigh.statistic.stray_slay","fallback":"Horde Strays Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.bogged-stat dummy {"translate":"rrc.h-nigh.statistic.bogged_slay","fallback":"Horde Bogged Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.creeper-stat dummy {"translate":"rrc.h-nigh.statistic.creeper_slay","fallback":"Horde Creepers Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.babyper-stat dummy {"translate":"rrc.h-nigh.statistic.babyper_slay","fallback":"Horde Babypers Slain","color":"#14C472","bold":true,"underlined":true}
scoreboard objectives add h-nigh.cowered dummy {"translate":"rrc.h-nigh.statistic.cowered","fallback":"Blood Moons Cowered Away","color":"yellow","bold":true,"underlined":true}
scoreboard objectives add h-nigh.survived dummy {"translate":"rrc.h-nigh.statistic.survived","fallback":"Blood Moons Survived","color":"dark_red","bold":true,"underlined":true}


execute unless score interval h-nigh.config = interval h-nigh.config run function h-nigh:config/default_days
scoreboard players set h-nigh rrc.init 2
schedule function h-nigh:ref/tellraw/init 1s