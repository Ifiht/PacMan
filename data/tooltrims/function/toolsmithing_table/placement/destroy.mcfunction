# detect the items that are dropped
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
kill @e[type=item, nbt={Item:{id:"minecraft:structure_block", count:1, components:{"minecraft:custom_model_data":312001}}}]
execute unless entity @p[gamemode=creative] run loot spawn ~ ~ ~ loot tooltrims:blocks/toolsmithing_table

# check if any dropped item is from the result slot
scoreboard players reset .310_check_complete 310_operation
execute store result score .310_check_combination 310_operation run scoreboard players get @s 310_combination
execute if entity @s[scores={310_recipe=1}] as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{trimmed_tool:1b}}}}, distance=..1] run function tooltrims:fixes/dropped/check_trimmed_result
execute store result score .310_check_template 310_operation run scoreboard players get @s 310_template
execute if entity @s[scores={310_recipe=2}] as @e[type=item, nbt={Item:{count:2, components:{"minecraft:custom_data":{tool_trim_smithing_template:1b}}}}, distance=..1] run function tooltrims:fixes/dropped/check_duplicated_result

# remove entity
tag @s remove 310_toolsmithing_table
kill @s[type=!player]