# check loop
execute if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{gui:1b}}]} if block ~ ~ ~ barrel{Items:[{Slot:20b}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312002, gui:1b, display:{Name:'{"text":""}'}} 1
execute if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{gui:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:19b, tag:{tool_trim_smithing_template:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:312002, gui:1b, display:{Name:'{"text":""}'}} 1
execute if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{gui:1b}}]} if block ~ ~ ~ barrel{Items:[{Slot:19b, tag:{tool_trim_smithing_template:1b}}]} unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run function tooltrims:toolsmithing_table/animations/empty_slot2_loop