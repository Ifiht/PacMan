# check loop
execute if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} if block ~ ~ ~ barrel{Items:[{Slot:19b}]} run item replace block ~ ~ ~ container.1 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute if block ~ ~ ~ barrel{Items:[{Slot:1b, components:{"minecraft:custom_data":{gui:1b}}}]} unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run function tooltrims:toolsmithing_table/animations/empty_slot1_loop