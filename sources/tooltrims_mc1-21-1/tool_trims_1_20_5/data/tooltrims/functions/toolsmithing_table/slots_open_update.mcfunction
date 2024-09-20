# reset recipe scoreboards
scoreboard players reset .310_combination 310_operation
scoreboard players reset .310_template 310_operation

# trimming
execute if entity @s[predicate=tooltrims:trimmable_items, predicate=tooltrims:result_gui_item] unless entity @s[scores={310_recipe=1}] run function tooltrims:toolsmithing_table/trimming/trigger

execute store result score .310_combination 310_operation run data get block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_data".combination
execute if entity @s[predicate=!tooltrims:trimmable_items, scores={310_recipe=1}] if score @s 310_combination = .310_combination 310_operation run function tooltrims:toolsmithing_table/trimming/delete_result
execute if entity @s[predicate=tooltrims:trimmable_items, scores={310_recipe=1}] unless score @s 310_combination = .310_combination 310_operation run function tooltrims:toolsmithing_table/trimming/delete_ingredients
execute if entity @s[predicate=tooltrims:trimmable_items, predicate=tooltrims:result_trimmed_item, scores={310_recipe=1}] if score @s 310_combination = .310_combination 310_operation run function tooltrims:toolsmithing_table/trimming/trigger

# duplications
execute if entity @s[predicate=tooltrims:duplication_items, predicate=tooltrims:result_gui_item] unless entity @s[scores={310_recipe=2}] run function tooltrims:toolsmithing_table/duplications/trigger

execute store result score .310_template 310_operation run data get block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_model_data"
execute if entity @s[predicate=!tooltrims:duplication_items, scores={310_recipe=2}] if score @s 310_template = .310_template 310_operation run function tooltrims:toolsmithing_table/duplications/delete_result
execute if entity @s[predicate=tooltrims:duplication_items, predicate=!tooltrims:result_duplicated_item, scores={310_recipe=2}] run function tooltrims:toolsmithing_table/duplications/delete_ingredients
execute if entity @s[predicate=tooltrims:duplication_items, scores={310_recipe=2}] unless score @s 310_template = .310_template 310_operation run function tooltrims:toolsmithing_table/duplications/delete_ingredients

# set the gui
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:0, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:1, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:2, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:3b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:3, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:4, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:5, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:6, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:7, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:8b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:8, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:9b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:9, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:10, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:11b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:11, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:12b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:12, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:13b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:13, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:14b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:14, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:15, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:16, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:17b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:17, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:18b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:18, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:22, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:23b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:23, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:24b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} unless entity @s[scores={310_recipe=1..}] run function tooltrims:fixes/container/empty_slot {slot:24, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312002, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:25, type:2}
execute unless block ~ ~ ~ barrel{Items:[{Slot:26b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":312001, "minecraft:custom_data":{gui:1b}}}]} run function tooltrims:fixes/container/empty_slot {slot:26, type:1}

# reset slot_update scoreboard
scoreboard players set @s 310_slot_update 0