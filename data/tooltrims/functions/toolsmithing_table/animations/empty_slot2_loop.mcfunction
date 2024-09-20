scoreboard objectives add 310_slot2 dummy
execute unless entity @s[scores={310_slot2=-2147483648..2147483647}] run scoreboard players set @s 310_slot2 1
execute if entity @s[scores={310_slot_timer=1}] run scoreboard players add @s 310_slot2 1

execute if entity @s[scores={310_slot2=1}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312010, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot2=2}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312011, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot2=3}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312012, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot2=4}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312013, gui:1b, display:{Name:'{"text":""}'}} 1
execute if entity @s[scores={310_slot2=5}] if block ~ ~ ~ barrel{Items:[{Slot:1b, tag:{gui:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312014, gui:1b, display:{Name:'{"text":""}'}} 1

execute if entity @s[scores={310_slot2=6..}] run scoreboard players set @s 310_slot2 1