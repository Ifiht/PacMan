execute store result score @s 310_count run data get block ~ ~ ~ Items[21].count
execute if entity @s[scores={310_count=7..}] if block ~ ~ ~ barrel{Items:[{Slot:19b, id:"minecraft:terracotta"},{Slot:20b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":313001}},{Slot:21b, id:"minecraft:diamond"}]} run function tooltrims:toolsmithing_table/duplications/linear_tool_trim_smithing_template
execute if entity @s[scores={310_count=7..}] if block ~ ~ ~ barrel{Items:[{Slot:19b, id:"minecraft:cobblestone"},{Slot:20b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":313002}},{Slot:21b, id:"minecraft:diamond"}]} run function tooltrims:toolsmithing_table/duplications/tracks_tool_trim_smithing_template
execute if entity @s[scores={310_count=7..}] if block ~ ~ ~ barrel{Items:[{Slot:19b, id:"minecraft:cobbled_deepslate"},{Slot:20b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":313003}},{Slot:21b, id:"minecraft:diamond"}]} run function tooltrims:toolsmithing_table/duplications/charge_tool_trim_smithing_template
execute if entity @s[scores={310_count=7..}] if block ~ ~ ~ barrel{Items:[{Slot:19b, id:"minecraft:snow_block"},{Slot:20b, id:"minecraft:structure_block", components:{"minecraft:custom_model_data":313004}},{Slot:21b, id:"minecraft:diamond"}]} run function tooltrims:toolsmithing_table/duplications/frost_tool_trim_smithing_template