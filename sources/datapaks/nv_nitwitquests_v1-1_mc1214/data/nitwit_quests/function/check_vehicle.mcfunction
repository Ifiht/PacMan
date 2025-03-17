execute as @e[type=interaction,tag=eden.quest.interaction] unless predicate eden:entity/is_riding_quest_vehicle run kill @s
execute as @e[type=text_display,tag=eden.quest.text] unless predicate eden:entity/is_riding_quest_vehicle run kill @s
execute as @e[type=item_display,tag=eden.quest.item] unless predicate eden:entity/is_riding_quest_vehicle run kill @s