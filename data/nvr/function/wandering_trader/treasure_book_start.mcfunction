loot spawn ~ ~ ~ loot nvr:treasure_book
data modify storage nvr:trader treasure_book set from entity @n[type=item,distance=..2,predicate=nvr:entity/is_enchanted_book] Item.components
kill @n[type=item,distance=..2,predicate=nvr:entity/is_enchanted_book]

function nvr:wandering_trader/treasure_book_add with storage nvr:trader