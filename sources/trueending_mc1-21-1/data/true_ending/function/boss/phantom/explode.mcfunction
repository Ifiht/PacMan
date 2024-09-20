

fill ~ ~2 ~ ~ ~-2 ~ air replace iron_bars


particle block{block_state:"minecraft:iron_bars"} ~ ~ ~ .5 1 .5 0 150 force @a[distance=..128]

playsound block.chain.break block @a[distance=..128] ~ ~ ~ 4 .6
playsound block.chain.break block @a[distance=..128] ~ ~ ~ 4 2
playsound entity.generic.explode block @a[distance=..128] ~ ~ ~ 4 1.2
particle explosion ~ ~ ~ 1 1 1 0 5 force @a[distance=..128]
particle dragon_breath ~ ~ ~ 0 0 0 .2 50 force @a[distance=..128]
particle large_smoke ~ ~ ~ 0 0 0 .2 10 force @a[distance=..128]
particle flash ~ ~ ~ 0 0 0 .2 5 force @a[distance=..128]

kill @s