loot spawn ~ ~ ~ loot nvr:tool_trim
data modify storage nvr:trader tool_trim set from entity @n[type=item,distance=..2,predicate=nvr:entity/is_tool_trim] Item.components
kill @n[type=item,distance=..2,predicate=nvr:entity/is_tool_trim]

function nvr:wandering_trader/tool_trim_add with storage nvr:trader
