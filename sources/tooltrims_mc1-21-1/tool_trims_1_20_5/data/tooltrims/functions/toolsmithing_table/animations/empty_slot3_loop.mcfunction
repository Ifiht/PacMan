scoreboard objectives add 310_slot3 dummy
execute unless entity @s[scores={310_slot3=-2147483648..2147483647}] run scoreboard players set @s 310_slot3 1
execute if entity @s[scores={310_slot_timer=1}] run scoreboard players add @s 310_slot3 1

execute if entity @s[scores={310_slot3=1}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312003, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot3=2}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312004, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot3=3}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312005, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot3=4}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312006, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot3=5}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312007, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot3=6}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312008, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot3=7}] if block ~ ~ ~ barrel{Items:[{Slot:3b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312009, custom_data={gui:1b}, item_name='{"text":""}'] 1

execute if entity @s[scores={310_slot3=8..}] run scoreboard players set @s 310_slot3 1