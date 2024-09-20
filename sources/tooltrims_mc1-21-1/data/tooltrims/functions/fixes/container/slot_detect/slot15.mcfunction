execute unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} run item replace block ~ ~ ~ container.15 with minecraft:structure_block{CustomModelData:312002, gui:1b, display:{Name:'{"text":""}'}} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run execute at @p run summon item ~ ~ ~ {Tags:["310_detected_gui_item"], Item:{id:"minecraft:structure_block", Count:1b}}

data modify entity @e[type=item, limit=1, tag=310_detected_gui_item] Item.id set from block ~ ~ ~ Items[{Slot:15b}].id
data modify entity @e[type=item, limit=1, tag=310_detected_gui_item] Item.Count set from block ~ ~ ~ Items[{Slot:15b}].Count
data modify entity @e[type=item, limit=1, tag=310_detected_gui_item] Item.tag set from block ~ ~ ~ Items[{Slot:15b}].tag

execute unless block ~ ~ ~ barrel{Items:[{Slot:15b, id:"minecraft:structure_block", tag:{CustomModelData:312002, gui:1b}}]} run item replace block ~ ~ ~ container.15 with minecraft:structure_block{CustomModelData:312002, gui:1b, display:{Name:'{"text":""}'}} 1
tag @e[limit=1, tag=310_detected_gui_item] remove 310_detected_gui_item