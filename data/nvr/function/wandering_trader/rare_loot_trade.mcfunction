execute store result score $nvr.rare_loot.trade nvr.technical run random value 1..2

execute if score $nvr.rare_loot.trade nvr.technical matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:barrel",count:1, components: {"minecraft:lore": ['{"color":"gray","italic":false,"text":"Loot"}'], "minecraft:container_loot": {loot_table: "nvr:trim_loot"}}}}
execute if score $nvr.rare_loot.trade nvr.technical matches  run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:barrel",count:1, components: {"minecraft:lore": ['{"color":"gray","italic":false,"text":"Loot"}'], "minecraft:container_loot": {loot_table: "nvr:trim_loot"}}}}

#execute if score $nvr.rare_loot.trade nvr.technical matches 1 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:6},sell:{id:"minecraft:structure_block",count:1,tag:{CustomModelData:313001,display:{Name:'{"translate":"item.tooltrims.smithing_template","color":"white","italic":false}',Lore:['{"translate":"tool_trim_pattern.tooltrims.linear","italic":false,"color":"gray"}','','{"translate":"item.tooltrims.smithing_template.applies_to","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.applies_to","italic":false,"color":"blue"}]}','{"translate":"item.tooltrims.smithing_template.ingredients","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.ingredients","italic":false,"color":"blue"}]}']}}}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 2 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:6},sell:{id:"minecraft:structure_block",count:1,tag:{CustomModelData:313002,display:{Name:'{"translate":"item.tooltrims.smithing_template","color":"white","italic":false}',Lore:['{"translate":"tool_trim_pattern.tooltrims.tracks","italic":false,"color":"gray"}','','{"translate":"item.tooltrims.smithing_template.applies_to","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.applies_to","italic":false,"color":"blue"}]}','{"translate":"item.tooltrims.smithing_template.ingredients","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.ingredients","italic":false,"color":"blue"}]}']}}}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 3 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:6},sell:{id:"minecraft:structure_block",count:1,tag:{CustomModelData:313003,display:{Name:'{"translate":"item.tooltrims.smithing_template","color":"white","italic":false}',Lore:['{"translate":"tool_trim_pattern.tooltrims.charge","italic":false,"color":"gray"}','','{"translate":"item.tooltrims.smithing_template.applies_to","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.applies_to","italic":false,"color":"blue"}]}','{"translate":"item.tooltrims.smithing_template.ingredients","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.ingredients","italic":false,"color":"blue"}]}']}}}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 4 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:6},sell:{id:"minecraft:structure_block",count:1,tag:{CustomModelData:313004,display:{Name:'{"translate":"item.tooltrims.smithing_template","color":"white","italic":false}',Lore:['{"translate":"tool_trim_pattern.tooltrims.frost","italic":false,"color":"gray"}','','{"translate":"item.tooltrims.smithing_template.applies_to","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.applies_to","italic":false,"color":"blue"}]}','{"translate":"item.tooltrims.smithing_template.ingredients","italic":false,"color":"gray"}','{"text":" ","extra":[{"translate":"item.tooltrims.smithing_template.tool_trim.ingredients","italic":false,"color":"blue"}]}']}}}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 5 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:12},sell:{id:"minecraft:bolt_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 6 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:coast_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 7 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:4},sell:{id:"minecraft:dune_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 8 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:7},sell:{id:"minecraft:eye_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 9 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:7},sell:{id:"minecraft:flow_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 10 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:9},sell:{id:"minecraft:host_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 11 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:4},sell:{id:"minecraft:raiser_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 12 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:rib_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 13 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:sentry_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 14 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:9},sell:{id:"minecraft:shaper_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 15 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:20},sell:{id:"minecraft:silence_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 16 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:9},sell:{id:"minecraft:snout_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 17 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:12},sell:{id:"minecraft:spire_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 18 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:tide_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 19 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:vex_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 20 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:4},sell:{id:"minecraft:ward_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 21 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:9},sell:{id:"minecraft:wayfinder_armor_trim_smithing_template",count:1}}
#execute if score $nvr.rare_loot.trade nvr.technical matches 22 run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:diamond",count:7},sell:{id:"minecraft:wild_armor_trim_smithing_template",count:1}}
