

execute as @e[type=ender_dragon,sort=nearest,limit=1] as @s[tag=!trueEnding_inattack] if score @s trueEnding_health_percent matches ..333 run scoreboard players set @s trueEnding_bosstime 4000

summon minecraft:marker ~ ~ ~ {Tags:["trueEnding_ultrafireball"]}

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 .15 12 force @a[distance=..64]

execute as @s[type=!dragon_fireball] run playsound minecraft:entity.ender_dragon.shoot hostile @a[distance=..128] ~ ~ ~ 10 1
kill @s[type=dragon_fireball]
