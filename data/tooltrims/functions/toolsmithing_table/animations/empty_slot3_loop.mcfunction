scoreboard objectives add 310_slot3 dummy
execute unless entity @s[scores={310_slot3=-2147483648..2147483647}] run scoreboard players set @s 310_slot3 1
execute if entity @s[scores={310_slot_timer=1}] run scoreboard players add @s 310_slot3 1

execute if entity @s[scores={310_slot3=1}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312003, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot3=2}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312004, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot3=3}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312005, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot3=4}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312006, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot3=5}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312007, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot3=6}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312008, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot3=7}] if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:312009, gui:1b, display:{Name:'{"text":""}'}} 1

execute if entity @s[scores={310_slot3=8..}] run scoreboard players set @s 310_slot3 1