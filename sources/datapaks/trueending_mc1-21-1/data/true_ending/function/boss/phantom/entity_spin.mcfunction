execute as @e[limit=1,sort=nearest,type=marker,tag=trueEnding_endspike_caged,distance=..16] at @s run tp @s ~ ~ ~ ~3 0

execute as @e[limit=1,sort=nearest,type=marker,tag=trueEnding_endspike_caged,distance=..16] at @s run tp @e[type=phantom,sort=nearest,limit=1,tag=trueEnding_guardphantom] ^ ^ ^12


execute at @s facing entity @e[limit=1,sort=nearest,type=marker,tag=trueEnding_endspike_caged,distance=..16] feet run tp @s ~ ~ ~ ~-90 ~

execute at @s run particle effect ^ ^ ^-2 0 0 0 0 1 force @a[distance=..128]

execute if entity @s[nbt={HurtTime:10s}] run function true_ending:boss/phantom/entity_2