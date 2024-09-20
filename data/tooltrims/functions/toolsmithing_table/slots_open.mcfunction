# prevent the open sound to be played and set the open tag
execute if entity @s[tag=!310_toolsmithing_table_open] run function tooltrims:fixes/barrel_open

# dectect if the content of the barrel changed
execute store success score @s 310_slot_update run data modify entity @s HandItems[0].tag.Items set from block ~ ~ ~ Items
execute if entity @s[scores={310_slot_update=1}] run function tooltrims:toolsmithing_table/slots_open_update

# slot animation to show what can be put in which slot
scoreboard players add @s 310_slot_timer 1
execute if entity @s[scores={310_slot_timer=30..}] run scoreboard players set @s 310_slot_timer 0

function tooltrims:toolsmithing_table/animations/empty_slot1_check
function tooltrims:toolsmithing_table/animations/empty_slot2_check
function tooltrims:toolsmithing_table/animations/empty_slot3_check
function tooltrims:toolsmithing_table/animations/empty_slotblock_check