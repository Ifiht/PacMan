scoreboard players add @s trueEnding_count 1

execute if score @s trueEnding_count matches 1 run particle dragon_breath ~ ~ ~ 0 0 0 .15 10 force @a[distance=..128]
execute if score @s trueEnding_count matches 1 run playsound entity.phantom.hurt player @a[distance=..64] ~ ~ ~ 4 1.5
execute if score @s trueEnding_count matches 1 run playsound entity.phantom.hurt player @a[distance=..64] ~ ~ ~ 4 1
execute if score @s trueEnding_count matches 1 run playsound entity.phantom.hurt player @a[distance=..64] ~ ~ ~ 4 .9

execute at @s run tp @s ~ ~ ~ ~25 ~

execute at @s run particle effect ^ ^ ^ 0 0 0 0 1 force @a[distance=..128]

execute if score @s trueEnding_count matches 11..20 facing entity @e[sort=nearest,limit=1,type=marker,tag=trueEnding_endspike_caged] eyes run tp @s ^ ^ ^.2
execute if score @s trueEnding_count matches 21.. facing entity @e[sort=nearest,limit=1,type=marker,tag=trueEnding_endspike_caged] eyes run tp @s ^ ^ ^.6

execute at @s run particle large_smoke ~ ~ ~ 0 0 0 .05 1 force @a[distance=..128]
execute at @s run particle dragon_breath ~ ~ ~ 0 0 0 .1 1 force @a[distance=..128]

execute at @s if block ~ ~ ~ iron_bars run function true_ending:boss/phantom/explode
execute at @s if block ~ ~-1 ~ bedrock run function true_ending:boss/phantom/explode