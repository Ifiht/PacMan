# reset recipe scoreboards
scoreboard players reset .310_combination 310_operation
scoreboard players reset .310_template 310_operation

# trimming
execute if entity @s[predicate=tooltrims:trimmable_items, predicate=tooltrims:result_gui_item] unless entity @s[scores={310_recipe=1}] run function tooltrims:toolsmithing_table/trimming/trigger

execute store result score .310_combination 310_operation run data get block ~ ~ ~ Items[{Slot:24b}].tag.combination
execute if entity @s[predicate=!tooltrims:trimmable_items, scores={310_recipe=1}] if score @s 310_combination = .310_combination 310_operation run function tooltrims:toolsmithing_table/trimming/delete_result
execute if entity @s[predicate=tooltrims:trimmable_items, scores={310_recipe=1}] unless score @s 310_combination = .310_combination 310_operation run function tooltrims:toolsmithing_table/trimming/delete_ingredients
execute if entity @s[predicate=tooltrims:trimmable_items, predicate=tooltrims:result_trimmed_item, scores={310_recipe=1}] if score @s 310_combination = .310_combination 310_operation run function tooltrims:toolsmithing_table/trimming/trigger

# duplications
execute if entity @s[predicate=tooltrims:duplication_items, predicate=tooltrims:result_gui_item] unless entity @s[scores={310_recipe=2}] run function tooltrims:toolsmithing_table/duplications/trigger

execute store result score .310_template 310_operation run data get block ~ ~ ~ Items[{Slot:24b}].tag.CustomModelData
execute if entity @s[predicate=!tooltrims:duplication_items, scores={310_recipe=2}] if score @s 310_template = .310_template 310_operation run function tooltrims:toolsmithing_table/duplications/delete_result
execute if entity @s[predicate=tooltrims:duplication_items, predicate=!tooltrims:result_duplicated_item, scores={310_recipe=2}] run function tooltrims:toolsmithing_table/duplications/delete_ingredients
execute if entity @s[predicate=tooltrims:duplication_items, scores={310_recipe=2}] unless score @s 310_template = .310_template 310_operation run function tooltrims:toolsmithing_table/duplications/delete_ingredients

# set the gui
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot0
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot1
execute unless block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot2
execute unless block ~ ~ ~ barrel{Items:[{Slot:3b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot3
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot4
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot5
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot6
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot7
execute unless block ~ ~ ~ barrel{Items:[{Slot:8b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot8
execute unless block ~ ~ ~ barrel{Items:[{Slot:9b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot9
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot10
execute unless block ~ ~ ~ barrel{Items:[{Slot:11b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot11
execute unless block ~ ~ ~ barrel{Items:[{Slot:12b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot12
execute unless block ~ ~ ~ barrel{Items:[{Slot:13b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot13
execute unless block ~ ~ ~ barrel{Items:[{Slot:14b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot14
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot15
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot16
execute unless block ~ ~ ~ barrel{Items:[{Slot:17b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot17
execute unless block ~ ~ ~ barrel{Items:[{Slot:18b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot18
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot22
execute unless block ~ ~ ~ barrel{Items:[{Slot:23b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot23
execute unless block ~ ~ ~ barrel{Items:[{Slot:24b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} unless entity @s[scores={310_recipe=1..}] run function tooltrims:fixes/container/slot_detect/slot24
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot25
execute unless block ~ ~ ~ barrel{Items:[{Slot:26b, id:"minecraft:structure_block", tag:{CustomModelData:312001, gui:1b}}]} run function tooltrims:fixes/container/slot_detect/slot26

# reset slot_update scoreboard
scoreboard players set @s 310_slot_update 0