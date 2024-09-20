tag @n[type=item,predicate=nvr:entity/item_count_1,distance=..0.75] add trade.item

data modify storage nvr:master_trades id set from entity @n[type=item,tag=trade.item] Item.id
execute as @n[type=item,tag=trade.item] if items entity @s container.0 minecraft:enchanted_book run \
data modify storage nvr:master_trades enchants set from entity @s Item.components

execute store result storage nvr:master_trades uses int 1 run random value 1..8
execute store result storage nvr:master_trades count int 1 run random value 1..3

execute as @n[type=item,tag=trade.item] if items entity @s container.0 #nvr:low_value_trades store result storage nvr:master_trades price int 1 run random value 1..12
execute as @n[type=item,tag=trade.item] if items entity @s container.0 #nvr:mid_value_trades store result storage nvr:master_trades price int 1 run random value 13..28
execute as @n[type=item,tag=trade.item] if items entity @s container.0 #nvr:high_value_trades store result storage nvr:master_trades price int 1 run random value 29..48

execute unless items entity @n[type=item,tag=trade.item] container.0 minecraft:enchanted_book run function nvr:master_trades/add_trade_regular with storage nvr:master_trades
execute if items entity @n[type=item,tag=trade.item] container.0 minecraft:enchanted_book run function nvr:master_trades/add_trade_enchanted with storage nvr:master_trades

advancement grant @p only nvr:progression/gave_master_trade