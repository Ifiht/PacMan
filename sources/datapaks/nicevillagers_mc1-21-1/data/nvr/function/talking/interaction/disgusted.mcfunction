execute at @s run data modify storage nvr:villager display_name set from entity @n[type=villager,tag=nvr.mood.disgusted] CustomName

execute store result score $villager_msg nvr.technical run random value 1..3

execute if score $villager_msg nvr.technical matches 1 run function nvr:talking/messages/disgusted/creeper
execute if score $villager_msg nvr.technical matches 2 run function nvr:talking/messages/disgusted/swamp
execute if score $villager_msg nvr.technical matches 3 run function nvr:talking/messages/disgusted/undead

execute unless items entity @s weapon.mainhand #nvr:invalid_for_talking run function nvr:talking/interaction/send_msg with storage nvr:villager

advancement revoke @s only nvr:talking/disgusted