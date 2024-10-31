playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 7 .6
playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 7 .5
playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 7 1

playsound ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 .6
playsound ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 .8
playsound ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 1
playsound ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 1.1
playsound ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 1.2
playsound ambient.basalt_deltas.mood hostile @a[distance=..128] ~ ~ ~ 6 1.3

#particle dragon_breath ~ ~1.5 ~ 0 0 0 0.4 100 force @a[distance=..128]
#particle dragon_breath ~ ~1.5 ~ 0 0 0 0.2 100 force @a[distance=..128]
function true_ending:boss/shockwave/summon

data modify entity @s Invulnerable set value 0b