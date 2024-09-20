tag @s add nvr.trader.announced
team join wandering_trader @s
execute store result score $trader.msg nvr.technical run random value 1..50

 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 1 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Hello, traveler! Got some unique trades for you today!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 2 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Pssst, over here! I've got what you need!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 3 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Fresh from the far corners of the world, come see my wares!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 4 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Looking for something special? I just might have it.","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 5 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Don’t miss out! Limited stock, first come first serve!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 6 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Care for a trade? I promise you won't regret it!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 7 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"New goods, fresh deals! Step right up!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 8 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I've journeyed far and wide to bring you these treasures!","color":"gray","bold":false,"italic":true}]
 $execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 9 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Looking for rare items? I might have what you seek!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 10 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Step right up! The best deals in all the land!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 11 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Time to trade! I've got some good stuff today.","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 12 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"You never know what you might find! Care to take a look?","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 13 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Hello there! I've got something you might be interested in.","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 14 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"New trades just for you, traveler!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 15 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Been wandering long? Let's see if I can help you out.","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 16 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Exotic goods from distant lands! Don't miss out!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 17 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Who knows what treasures you’ll find with me today?","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 18 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I've got deals you can't refuse! Come check it out!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 19 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"New day, new trades! What'll it be?","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 20 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"You look like someone in need of a good trade!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 21 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Out of the ordinary and just for you!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 22 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Curious about my goods? Let's make a deal!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 23 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Trading time! Don’t miss out on today’s deals!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 24 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"A good trade might be just what you need!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 25 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Step right up, rare items here!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 26 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I’ve crossed deserts and oceans to bring you these!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 27 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Ready for a deal? I've got something you’ll love!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 28 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Your lucky day, traveler! I’ve got rare finds!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 29 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Fancy a trade? I’ve got some interesting items today.","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 30 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"New trades for new adventures!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 31 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Looking for something special? Come check out my goods!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 32 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Good trades don’t wait! Come see what I've got.","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 33 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I’ve got the best deals from all around the world!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 34 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"You won’t find these items anywhere else!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 35 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Rare items for rare adventurers!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 36 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Want to see what I've got today? Come closer!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 37 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"From my travels to your inventory!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 38 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Greetings! Fancy a trade?","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 39 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Something for everyone! Let’s trade!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 40 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Exotic items, right here! Let’s make a deal!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 41 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Trade with me, you won't regret it!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 42 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Fresh deals from faraway lands!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 43 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Just arrived! The best trades you’ll find today!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 44 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Come closer, I’ve got something special for you!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 45 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Your next adventure starts with a good trade!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 46 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I've brought treasures from afar!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 47 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I’ve wandered far and wide to bring you these goods.","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 48 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"New day, new deals! Let’s trade!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 49 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"Step right up, traveler! Let’s see what catches your eye!","color":"gray","bold":false,"italic":true}]
$execute as @a if predicate nvr:entity/is_nearby_64 if score $trader.msg nvr.technical matches 50 run tellraw @s [$(CustomName),{"text":": ","color":"gray","bold":false,"italic":false},{"text":"I have items from lands beyond! Don’t miss out!","color":"gray","bold":false,"italic":true}]

execute as @a if predicate nvr:entity/is_nearby_64 run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2

summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;1222911],fade_colors:[I;16738591]},{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;16769577],fade_colors:[I;1629766]}]}}}}
summon firework_rocket ~3 ~10 ~ {LifeTime:35,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;1629766],fade_colors:[I;5095167]}]}}}}
summon firework_rocket ~ ~10 ~3 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;1629766],fade_colors:[I;5095167]}]}}}}
summon firework_rocket ~-3 ~10 ~ {LifeTime:45,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;1629766],fade_colors:[I;5095167]}]}}}}
summon firework_rocket ~ ~10 ~-3 {LifeTime:50,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;1629766],fade_colors:[I;5095167]}]}}}}

effect give @s minecraft:glowing 10 0 true