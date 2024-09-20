# untrim tools on player's inventories
execute as @a run function tooltrims:fixes/container/untrim

# replace all toolsmithing tables in loaded chunks
execute as @e[tag=310_toolsmithing_table] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=310_toolsmithing_table] at @s run function tooltrims:toolsmithing_table/placement/destroy

# remove scoreboards
scoreboard objectives remove update_item
scoreboard objectives remove 310_count
scoreboard objectives remove 310_recipe

scoreboard objectives remove 310_slot_update
scoreboard objectives remove 310_slot_timer
scoreboard objectives remove 310_slot1
scoreboard objectives remove 310_slot2
scoreboard objectives remove 310_slot3

scoreboard objectives remove 310_result_count
scoreboard objectives remove 310_operation
scoreboard players reset .310_40 310_operation
scoreboard players reset .310_combination 310_operation
scoreboard players reset .310_trim 310_operation
scoreboard players reset .310_template 310_operation
scoreboard players reset .310_check_combination 310_operation
scoreboard players reset .310_check_template 310_operation
scoreboard players reset .310_check_complete 310_operation
scoreboard objectives remove 310_combination
scoreboard objectives remove 310_template

# uninstallation message
tellraw @s {"text":"These parts of Tool Trims have been removed:\n  - Toolsmithing Tables placed on loaded chunks\n  - Trimmed tools in players' inventory and on the ground\n  - Scoreboards", "color":"red"}