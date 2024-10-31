particle minecraft:happy_villager ~ ~1.2 ~ .3 .3 .3 0.5 10

$data modify entity @s Offers.Recipes append value \
{maxUses:$(uses),buy:{id:"minecraft:emerald",count:$(price)},buyB:{id:"minecraft:book",count:1},sell:{id:"$(id)",count:1,components:$(enchants)},xp:20,priceMultiplier: 0.1f, demand: -24}

tag @s add nvr.master.trade.set
kill @n[type=item,tag=trade.item]