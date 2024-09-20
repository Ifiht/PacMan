# reset the update_item scoreboard
scoreboard players set @s update_item 0

# update the tool in player's main hand
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30101}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_diamond
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30102}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_diamond
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30103}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_amethyst
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30104}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_amethyst
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30105}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_gold
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30106}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_gold
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30107}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_redstone
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30108}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_redstone
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30109}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_emerald
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30110}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_emerald
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30111}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_copper
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30112}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_copper
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30113}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_iron
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30114}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_iron
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30115}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_netherite
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30116}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_netherite
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30117}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_lapis
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30118}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/tracks_lapis
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30119}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_quartz
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:30120}}}] store success score @s update_item run item modify entity @s weapon.mainhand tooltrims:trims/linear_quartz

# detect if the function run sucessfully
execute if entity @s[scores={update_item=0}] run tellraw @s {"text":"Update failed, old trimmed tool or old Toolsmithing Table were not found in main hand", "color":"red"}
execute if entity @s[scores={update_item=1}] run scoreboard players set @s update_item 0