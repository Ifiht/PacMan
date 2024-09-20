particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
particle explosion ~ ~ ~ 6 3 6 0 15 force @a[distance=..128]
playsound entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 6 .8
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..128] ~ ~ ~ 6 1.3

execute as @e[distance=0.001..6,type=!#true_ending:misc] run damage @s 20 true_ending:mob_attack_pierce_shield_cooldown by @e[sort=nearest,limit=1,type=ender_dragon]
execute as @e[distance=6..12,type=!#true_ending:misc] run damage @s 16 true_ending:mob_attack_pierce_shield_cooldown by @e[sort=nearest,limit=1,type=ender_dragon]
execute if score pearlbreaking trueEnding_settings matches 1 positioned ~ ~ ~ as @e[distance=..7,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] at @s run function true_ending:other/disappear_ender



particle dragon_breath ~ ~.5 ~ 6 .2 6 .2 120 force @a[distance=..64]
execute align y positioned ~ ~.2 ~ run function true_ending:boss/shockwave/summon2
