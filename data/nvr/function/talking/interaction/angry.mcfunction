execute at @s run data modify storage nvr:villager display_name set from entity @n[type=villager,tag=nvr.mood.angry] CustomName

execute store result score $villager_msg nvr.technical run random value 1..20

execute if score $villager_msg nvr.technical matches 1 run function nvr:talking/messages/angry/builds
execute if score $villager_msg nvr.technical matches 2 run function nvr:talking/messages/angry/cats
execute if score $villager_msg nvr.technical matches 3 run function nvr:talking/messages/angry/creeper
execute if score $villager_msg nvr.technical matches 4 run function nvr:talking/messages/angry/daily_life
execute if score $villager_msg nvr.technical matches 5 run function nvr:talking/messages/angry/daylength
execute if score $villager_msg nvr.technical matches 6 run function nvr:talking/messages/angry/emeralds
execute if score $villager_msg nvr.technical matches 7 run function nvr:talking/messages/angry/kids
execute if score $villager_msg nvr.technical matches 8 run function nvr:talking/messages/angry/location
execute if score $villager_msg nvr.technical matches 9 run function nvr:talking/messages/angry/minecarts
execute if score $villager_msg nvr.technical matches 10 run function nvr:talking/messages/angry/misc
execute if score $villager_msg nvr.technical matches 11 run function nvr:talking/messages/angry/neighbor
execute if score $villager_msg nvr.technical matches 12 run function nvr:talking/messages/angry/nitwit
execute if score $villager_msg nvr.technical matches 13 run function nvr:talking/messages/angry/no_horse
execute if score $villager_msg nvr.technical matches 14 run function nvr:talking/messages/angry/phantom
execute if score $villager_msg nvr.technical matches 15 run function nvr:talking/messages/angry/pillager
execute if score $villager_msg nvr.technical matches 16 run function nvr:talking/messages/angry/player
execute if score $villager_msg nvr.technical matches 17 run function nvr:talking/messages/angry/protection
execute if score $villager_msg nvr.technical matches 18 run function nvr:talking/messages/angry/stealing
execute if score $villager_msg nvr.technical matches 19 run function nvr:talking/messages/angry/wandering_trader
execute if score $villager_msg nvr.technical matches 20 run function nvr:talking/messages/angry/zombie_villager

execute unless items entity @s weapon.mainhand #nvr:invalid_for_talking run function nvr:talking/interaction/send_msg with storage nvr:villager

advancement revoke @s only nvr:talking/angry