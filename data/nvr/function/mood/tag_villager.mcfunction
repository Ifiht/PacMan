execute store result score $mood nvr.technical run random value 1..12

execute if score $mood nvr.technical matches 1 run tag @s add nvr.mood.angry
execute if score $mood nvr.technical matches 2 run tag @s add nvr.mood.curious
execute if score $mood nvr.technical matches 3 run tag @s add nvr.mood.disgusted
execute if score $mood nvr.technical matches 4 run tag @s add nvr.mood.excited
execute if score $mood nvr.technical matches 5 run tag @s add nvr.mood.frightened
execute if score $mood nvr.technical matches 6 run tag @s add nvr.mood.happy
execute if score $mood nvr.technical matches 7 run tag @s add nvr.mood.logical
execute if score $mood nvr.technical matches 8 run tag @s add nvr.mood.neutral
execute if score $mood nvr.technical matches 9 run tag @s add nvr.mood.religious
execute if score $mood nvr.technical matches 10 run tag @s add nvr.mood.sad
execute if score $mood nvr.technical matches 11 run tag @s add nvr.mood.sarcastic
execute if score $mood nvr.technical matches 12 run tag @s add nvr.mood.surprised

tag @s add nvr.mood.set