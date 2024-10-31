playsound minecraft:entity.blaze.death hostile @a[distance=..64] ~ ~ ~ 2 .6
playsound minecraft:item.trident.thunder hostile @a[distance=..64] ~ ~ ~ 2 2

particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..128]

particle end_rod ~ ~1 ~ 0 0 0 1 30 force @a[distance=..128]
particle end_rod ~ ~1 ~ 0 0 0 .5 30 force @a[distance=..128]
particle end_rod ~ ~1 ~ 0 0 0 .25 30 force @a[distance=..128]
particle flash ~ ~1 ~ 0 0 0 .25 6 force @a[distance=..128]

particle dragon_breath ~ ~1 ~ 0 0 0 .3 10 normal

damage @s 24 true_ending:mob_attack_pierce_shield by @e[sort=nearest,limit=1,type=ender_dragon]