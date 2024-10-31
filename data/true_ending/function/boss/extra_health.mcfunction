
#get current health
execute store result score temp_health trueEnding_health_extra run data get entity @s Health

#subtract 1024 (temp_damageDealt) by current health to get the difference (the amount of damage dealt to the dragon)
execute store result score temp_damageDealt trueEnding_health_extra run scoreboard players get @s trueEnding_health_max
scoreboard players operation temp_damageDealt trueEnding_health_extra -= temp_health trueEnding_health_extra

#take the damage dealt value and subtract it from the additional health
scoreboard players operation @s trueEnding_health_extra -= temp_damageDealt trueEnding_health_extra

#store new health in additional health bar
execute store result bossbar true_ending:extra_health value run scoreboard players get @s trueEnding_health_extra

#reset damage dealt // reset health
scoreboard players set temp_damageDealt trueEnding_health_extra 0
data modify entity @s Health set value 1024

execute if score 10tick trueEnding_clock matches 1 unless score @s trueEnding_health_extra > @s trueEnding_health_extra_max if data entity @e[type=end_crystal,distance=..32,limit=1] ShowBottom run scoreboard players add @s trueEnding_health_extra 1