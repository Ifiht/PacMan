##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add eden.quest.item.count dummy
scoreboard objectives add eden.quest.completed.count dummy

##init schedules
schedule function nitwit_quests:run 10t