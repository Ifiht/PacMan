execute store result score @s 310_template run data get entity @s Item.tag.CustomModelData
execute if score @s 310_template = .310_check_template 310_operation unless score .310_check_complete 310_operation matches 1 run function tooltrims:fixes/dropped/delete