summon minecraft:marker ~ ~ ~ {Tags:["trueEnding_dragonparticle","trueEnding_dragonparticle_temp"]}
spreadplayers ~ ~ 48 48 false @e[type=marker,tag=trueEnding_dragonparticle,sort=nearest,limit=1]
execute as @e[type=marker,tag=trueEnding_dragonparticle_temp] at @s run function true_ending:ambience/wave_particle
execute as @e[type=marker,tag=trueEnding_dragonparticle_temp] at @s run tag @s remove trueEnding_dragonparticle_temp