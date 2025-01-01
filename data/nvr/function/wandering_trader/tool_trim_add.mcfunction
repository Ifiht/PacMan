execute store result score $nvr.ttrim.trade nvr.technical run random value 1..2

$execute if score $nvr.ttrim.trade nvr.technical matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:emerald",count:48},sell:{id:"minecraft:structure_block",count:1,components:$(tool_trim)}}
$execute if score $nvr.ttrim.trade nvr.technical matches 2 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:structure_block",count:1,components:$(tool_trim)}}
