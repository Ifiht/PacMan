scoreboard objectives remove trueEnding_settings
scoreboard objectives add trueEnding_settings dummy


data remove storage true_ending:storage settings


playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1

tag @e[type=ender_dragon] remove trueEnding_dragon_particlechecked


function true_ending:other/default_settings

function true_ending:settings/1