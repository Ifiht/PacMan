execute at @s run data modify storage nvr:villager display_name set from entity @n[type=villager,tag=nvr.mood.curious] CustomName

execute store result score $villager_msg nvr.technical run random value 1..8

execute if score $villager_msg nvr.technical matches 1 run function nvr:talking/messages/curious/ancient_city
execute if score $villager_msg nvr.technical matches 2 run function nvr:talking/messages/curious/ender_dragon
execute if score $villager_msg nvr.technical matches 3 run function nvr:talking/messages/curious/harvest
execute if score $villager_msg nvr.technical matches 4 run function nvr:talking/messages/curious/nether
execute if score $villager_msg nvr.technical matches 5 run function nvr:talking/messages/curious/piglin
execute if score $villager_msg nvr.technical matches 6 run function nvr:talking/messages/curious/player
execute if score $villager_msg nvr.technical matches 7 run function nvr:talking/messages/curious/trial_chamber
execute if score $villager_msg nvr.technical matches 8 run function nvr:talking/messages/curious/world

execute unless items entity @s weapon.mainhand #nvr:invalid_for_talking run function nvr:talking/interaction/send_msg with storage nvr:villager

advancement revoke @s only nvr:talking/curious