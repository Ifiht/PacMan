function true_ending:boss/shockwave/find_ground


playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..128] ~ ~ ~ 4 1
particle dragon_breath ~ ~ ~ 0 0 0 0.8 30 normal @a[distance=..128]
particle dragon_breath ~ ~ ~ 0 0 0 0.4 30 force @a[distance=..128]
particle large_smoke ~ ~ ~ 0 0 0 0.2 10 force @a[distance=..128]

execute at @s align y run summon area_effect_cloud ~ ~.2 ~ {Particle:{type:"dragon_breath"},ReapplicationDelay:20,Radius:4f,RadiusPerTick:0f,Duration:1200,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}]},Tags:["trueEnding_dragonbreath","trueEnding_dragonbreath_temp"]}



execute at @s run data modify entity @e[sort=nearest,limit=1,type=area_effect_cloud,tag=trueEnding_dragonbreath_temp] Owner set from entity @e[type=ender_dragon,sort=nearest,limit=1] UUID
execute at @s run tag @e[type=area_effect_cloud,tag=trueEnding_dragonbreath_temp,sort=nearest,limit=1] remove trueEnding_dragonbreath_temp

execute as @e[distance=0.001..3.5,type=!#true_ending:misc] run damage @s 16 true_ending:mob_attack by @e[type=ender_dragon,limit=1,sort=nearest]
execute if score pearlbreaking trueEnding_settings matches 1 positioned ~ ~ ~ as @e[distance=..3.5,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] at @s run function true_ending:other/disappear_ender


kill @s