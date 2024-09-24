$execute if items entity @s weapon.mainhand $(interaction_item) if score @s nvr.quest.item.count matches $(interaction_count).. run function nvr:quest/interaction/payout with storage nvr:villager
