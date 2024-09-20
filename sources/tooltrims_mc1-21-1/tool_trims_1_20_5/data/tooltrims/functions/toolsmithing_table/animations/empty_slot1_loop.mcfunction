scoreboard objectives add 310_slot1 dummy
execute if entity @s[scores={310_slot_timer=1}] run scoreboard players add @s 310_slot1 1

execute if entity @s[scores={310_slot1=1}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.1 with minecraft:structure_block[custom_model_data=312015, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if entity @s[scores={310_slot1=2}] if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} run item replace block ~ ~ ~ container.1 with minecraft:structure_block[custom_model_data=312016, custom_data={gui:1b}, item_name='{"text":""}'] 1

execute if entity @s[scores={310_slot1=3..}] run scoreboard players set @s 310_slot1 1