$tellraw @s [$(display_name),{"bold":false,"color":"gray","italic":false,"text":": "},{"bold":false,"color":"gray","italic":true,"text":"$(talking)"}]

execute as @s at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2