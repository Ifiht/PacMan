execute if predicate true_ending:chance/10_percent run summon area_effect_cloud ~ ~.2 ~ {Particle:{type:"dragon_breath"},ReapplicationDelay:20,Radius:4f,RadiusPerTick:0f,Duration:3600,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:["trueEnding_dragonbreath","trueEnding_dragonbreath_temp","trueEnding_dragonbreath_quarter"]}


execute positioned ~ ~.2 ~ run data modify entity @e[sort=nearest,limit=1,type=area_effect_cloud,tag=trueEnding_dragonbreath] Owner set from entity @e[type=ender_dragon,sort=nearest,limit=1] UUID

particle end_rod ~ ~ ~ 0 0 0 .2 2 force @a[distance=..256]
particle end_rod ~ ~ ~ 0 0 0 .4 2 force @a[distance=..256]
particle dragon_breath ~ ~1 ~ 0 0 0 .2 10 normal

execute positioned ~ ~-1 ~ as @e[distance=..4.5,type=!#true_ending:misc,type=!ender_dragon] at @s run function true_ending:boss/laser/hit_entity
execute if score pearlbreaking trueEnding_settings matches 1 positioned ~ ~ ~ as @e[distance=..5,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] at @s run function true_ending:other/disappear_ender

summon firework_rocket ~ ~ ~ {Silent:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;15597823,15832831]}]}}}}
data modify entity @e[sort=nearest,limit=1,type=firework_rocket] Owner set from entity @e[type=ender_dragon,sort=nearest,limit=1] UUID