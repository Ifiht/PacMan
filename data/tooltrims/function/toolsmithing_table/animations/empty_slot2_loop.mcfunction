scoreboard objectives add 310_slot2 dummy
execute unless entity @s[scores={310_slot2=-2147483648..2147483647}] run scoreboard players set @s 310_slot2 1
execute if entity @s[scores={310_slot_timer=1}] run scoreboard players add @s 310_slot2 1

execute if entity @s[scores={310_slot2=1}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312010, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=2}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312011, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=3}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312012, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=4}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312013, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=5}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312014, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=6}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312018, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=7}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312019, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot2=8}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312020, custom_data={gui:1b}, item_name='{"text":""}'] 1

execute if entity @s[scores={310_slot2=9..}] run scoreboard players set @s 310_slot2 1