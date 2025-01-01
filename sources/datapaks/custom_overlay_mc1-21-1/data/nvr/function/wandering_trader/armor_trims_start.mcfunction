loot spawn ~ ~ ~ loot nvr:armor_trim
data modify storage nvr:trader armor_trim set from entity @n[type=item,distance=..2,predicate=nvr:entity/is_armor_trim] Item.components
kill @n[type=item,distance=..2,predicate=nvr:entity/is_armor_trim]

function nvr:wandering_trader/armor_trim_add with storage nvr:trader
