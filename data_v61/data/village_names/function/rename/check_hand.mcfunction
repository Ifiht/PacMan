

execute if items entity @s weapon.mainhand minecraft:name_tag[!minecraft:custom_name] run function village_names:rename/no_custom_name
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run function village_names:rename/with_custom_name
