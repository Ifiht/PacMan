# set scoreboards
scoreboard objectives add update_item trigger
scoreboard objectives add 310_count dummy
scoreboard objectives add 310_recipe dummy

scoreboard objectives add 310_slot_update dummy
scoreboard players set @s 310_slot_update 1
scoreboard objectives add 310_slot_timer dummy

scoreboard objectives add 310_operation dummy
scoreboard players set .310_40 310_operation 40
scoreboard objectives add 310_combination dummy
scoreboard objectives add 310_template dummy

# reset the crafting recipe for 1.20.4 and below
recipe take @a tooltrims:toolsmithing_table
advancement revoke @a only tooltrims:craft/toolsmithing_table

# reset the gui of all toolsmithing tables in loaded chunks
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.0 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.1 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.2 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.3 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.4 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.5 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.6 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.7 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.8 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.9 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.10 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.11 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.12 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.13 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.14 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.15 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.16 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.17 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.18 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.22 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.23 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.24 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.25 with minecraft:structure_block[custom_model_data=312002, custom_data={gui:1b}, item_name='{"text":""}'] 1
execute as @e[tag=310_toolsmithing_table] at @s run item replace block ~ ~ ~ container.26 with minecraft:structure_block[custom_model_data=312001, custom_data={gui:1b}, item_name='{"text":""}'] 1

# reload message
tellraw @a [{"text":"Tool Trims v2.2.1","color":"#96F088", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://modrinth.com/datapack/tool-trims"}},{"text":" was reloaded!","color":"#96F088", "underlined": false}]