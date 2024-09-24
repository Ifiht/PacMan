particle minecraft:happy_villager ~ ~1.2 ~ .3 .3 .3 0.5 10

$execute if items entity @n[type=item,tag=trade.item] container.0 #nvr:single_item_trades run \
data modify entity @s Offers.Recipes append value \
{maxUses:$(uses),buy:{id:"minecraft:emerald",count:$(price)},sell:{id:"$(id)",count:1},xp:20,priceMultiplier: 0.1f, demand: -24}

$execute unless items entity @n[type=item,tag=trade.item] container.0 #nvr:single_item_trades unless items entity @n[type=item,tag=trade.item] container.0 minecraft:enchanted_book run \
data modify entity @s Offers.Recipes append value \
{maxUses:$(uses),buy:{id:"minecraft:emerald",count:$(price)},sell:{id:"$(id)",count:$(count)},xp:20,priceMultiplier: 0.1f, demand: -24}

tag @s add nvr.master.trade.set
kill @n[type=item,tag=trade.item]