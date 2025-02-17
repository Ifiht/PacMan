execute as @e[type=item_display,tag=quest.item] run kill @s

execute as @e[type=villager,tag=!eden.quest.set,predicate=eden:entity/is_nitwit] at @s run function nitwit_quests:get_data
function nitwit_quests:check_vehicle

schedule function nitwit_quests:run 10t
