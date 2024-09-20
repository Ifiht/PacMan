


summon ender_dragon ~ ~128 ~ {Tags:["trueEnding_mirrordragon","trueEnding_mirrordragon_temp"],NoAI:0b,Silent:1b,Invulnerable:1b}

spreadplayers ~ ~ 6 6 false @e[type=ender_dragon,tag=trueEnding_mirrordragon_temp,limit=1]

execute as @e[type=ender_dragon,tag=trueEnding_mirrordragon_temp,limit=1] at @s run tp @s ~ ~128 ~

tag @e[type=ender_dragon,tag=trueEnding_mirrordragon_temp,limit=1] remove trueEnding_mirrordragon_temp