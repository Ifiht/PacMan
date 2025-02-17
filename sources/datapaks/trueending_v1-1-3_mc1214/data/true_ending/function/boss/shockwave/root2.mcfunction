scoreboard players add @s trueEnding_count 1

execute at @s align y positioned ~ ~.2 ~ if block ~ ~-1 ~ #true_ending:permeable run function true_ending:boss/shockwave/find_ground
execute at @s align y positioned ~ ~.2 ~ unless block ~ ~ ~ #true_ending:permeable run function true_ending:boss/shockwave/find_ground

execute at @s run particle dust{color:[1.000,0.075,0.976],scale:1.2} ^ ^ ^ .5 .05 .5 0 1 force @a[distance=..128]
execute at @s run particle electric_spark ^ ^ ^ .5 .05 .5 0 2 force @a[distance=..128]

execute positioned ~ ~-1 ~ as @e[distance=..1.4,type=!#true_ending:misc] run damage @s 16 true_ending:mob_attack_pierce_shield by @e[type=ender_dragon,limit=1,sort=nearest]
execute if score pearlbreaking trueEnding_settings matches 1 positioned ~ ~ ~ as @e[distance=..1.4,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] at @s run function true_ending:other/disappear_ender


execute if score @s trueEnding_count matches 1..70 at @s run tp @s ^ ^ ^.5
execute if score @s trueEnding_count matches 71..86 at @s run tp @s ^ ^ ^.225

execute if score @s trueEnding_count matches 86.. at @s run particle poof
execute if score @s trueEnding_count matches 86.. at @s run kill @s
