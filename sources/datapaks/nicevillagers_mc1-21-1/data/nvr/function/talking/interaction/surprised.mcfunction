execute at @s run data modify storage nvr:villager display_name set from entity @n[type=villager,tag=nvr.mood.surprised] CustomName

execute store result score $villager_msg nvr.technical run random value 1..2

execute if score $villager_msg nvr.technical matches 1 run function nvr:talking/messages/surprised/alive
execute if score $villager_msg nvr.technical matches 2 run function nvr:talking/messages/surprised/arrival

execute unless items entity @s weapon.mainhand #nvr:invalid_for_talking run function nvr:talking/interaction/send_msg with storage nvr:villager

advancement revoke @s only nvr:talking/surprised