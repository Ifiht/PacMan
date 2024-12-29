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

# reload message
tellraw @a [{"text":"Tool Trims v2.2.2","color":"#96F088", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://modrinth.com/datapack/tool-trims"}},{"text":" was reloaded!","color":"#96F088", "underlined": false}]