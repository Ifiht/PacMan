scoreboard players add @s trueEnding_count 1
execute if predicate true_ending:chance/50_percent run particle dragon_breath ~ ~ ~ ^ ^ ^10000000000000000000 0.00000000000000000002 0 force @a[distance=..256]
#execute if predicate true_ending:chance/5_percent run particle dragon_breath ~ ~ ~ ^ ^ ^-10000000000000000000 0.00000000000000000001 0 force @a[distance=..256]

#particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..642]

execute unless score @s trueEnding_count matches 40.. at @s if predicate true_ending:chance/50_percent run tp @s ^ ^ ^.7
execute if score @s trueEnding_count matches 40.. at @s facing 0 80 0 run tp @s ^.6 ^ ^ ~90 0

execute unless score @s trueEnding_count matches 40.. at @s run tp @s ~ ~ ~ ~1 ~
execute unless score @s trueEnding_count matches 40.. if predicate true_ending:chance/50_percent at @s run tp @s ~ ~.2 ~
execute unless score @s trueEnding_count matches 40.. if predicate true_ending:chance/50_percent at @s run tp @s ~ ~-.2 ~


execute unless entity @e[distance=..256,type=ender_dragon] run kill @s