execute store result score $nvr.trim.trade nvr.technical run random value 1..2

$execute if score $nvr.trim.trade nvr.technical matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:emerald",count:48},sell:{id:"minecraft:smithing_template",count:1,components:$(armor_trim)}}
$execute if score $nvr.trim.trade nvr.technical matches 2 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:smithing_template",count:1,components:$(armor_trim)}}