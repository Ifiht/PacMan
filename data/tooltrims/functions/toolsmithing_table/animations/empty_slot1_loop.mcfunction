scoreboard objectives add 310_slot1 dummy
execute if entity @s[scores={310_slot_timer=1}] run scoreboard players add @s 310_slot1 1

execute if entity @s[scores={310_slot1=1}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:312015, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot1=2}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:312016, gui:1b, display:{Name:'{"text":""}'}} 1

execute if entity @s[scores={310_slot1=3..}] run scoreboard players set @s 310_slot1 1