$summon interaction ~ ~ ~ {width:.7f,height:-1.95f,Tags:["quest.interaction","$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)"]}
$ride @n[type=interaction,tag=$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)] mount @s

$scoreboard players operation @n[type=interaction,tag=$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)] nvr.quest.item.count = @s nvr.quest.item.count

$summon text_display ~ ~ ~ {alignment:"center",billboard:"vertical",shadow:1b,Tags:["quest.text","$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[.5f,.5f,.5f]},text:'{"text":"$(item_count) $(item_capitalized)","color":"#7C946A","bold":false,"italic":false}',background:16711680}
$ride @n[type=text_display,tag=quest.text,tag=$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)] mount @n[type=interaction,tag=$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)]

data modify entity @s VillagerData.profession set value "minecraft:nitwit"

$summon item_display ~ ~ ~ {billboard:"vertical",item_display:"ground",Tags:["quest.item","$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.28f,0f],scale:[.5f,.5f,.5f]},item:{id:"minecraft:$(quest_item)",count:1}}
$ride @n[type=item_display,tag=$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)] mount @n[type=text_display,tag=quest.text,tag=$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3)]