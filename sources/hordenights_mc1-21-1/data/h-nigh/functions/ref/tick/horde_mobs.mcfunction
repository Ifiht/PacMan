#==============NOTE===============#
#This datapack was made by Rainzy.#
#This function is made by Bowswa. #
#Liscense for use per Modrinth TOS#
#==============NOTE===============#

#=======Zombies======#
execute as @e[type=#h-nigh:zombies,tag=!h-nigh.mob,tag=!smithed.entity,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.mob"]}

execute as @e[type=#h-nigh:zombies,tag=h-nigh.mob] run data modify entity @s CanBreakDoors set value 1b
execute as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:zombie.spawn_reinforcements base set 1
execute as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.follow_range base set 400

execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.5 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.2 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.4 multiply_base

execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 2 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.3 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.6 multiply_base

execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 2.5 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.4 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.8 multiply_base

execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 3 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.5 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2 multiply_base

#=Baby=#
execute as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:zombie.spawn_reinforcements base set 0.5
execute as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.follow_range base set 200

execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.25 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.1 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.2 multiply_base

execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.5 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.15 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.3 multiply_base

execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.75 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.2 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.4 multiply_base

execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 2 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.25 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:zombies,tag=h-nigh.mob,nbt={IsBaby:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.5 multiply_base


#=====Skeletons=====#
execute as @e[type=#h-nigh:skeletons,tag=!h-nigh.mob,tag=!smithed.entity,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.mob"]}

execute as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.follow_range base set 400

execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.2 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.4 multiply_base
execute if score #difficulty h-nigh.config matches 1 run enchant @e[type=#h-nigh:skeletons,tag=h-nigh.mob] power 1

execute if score #difficulty h-nigh.config matches 1..2 run enchant @e[type=#h-nigh:skeletons,tag=h-nigh.mob] punch 1

execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.25 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.6 multiply_base
execute if score #difficulty h-nigh.config matches 2 run enchant @e[type=#h-nigh:skeletons,tag=h-nigh.mob] power 2

execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.3 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.8 multiply_base
execute if score #difficulty h-nigh.config matches 3 run enchant @e[type=#h-nigh:skeletons,tag=h-nigh.mob] power 3

execute if score #difficulty h-nigh.config matches 3..4 run enchant @e[type=#h-nigh:skeletons,tag=h-nigh.mob] punch 2

execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.35 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=#h-nigh:skeletons,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2 multiply_base
execute if score #difficulty h-nigh.config matches 4 run enchant @e[type=#h-nigh:skeletons,tag=h-nigh.mob] power 4


#=======Phantom======#
execute as @e[type=minecraft:phantom,tag=!h-nigh.mob,tag=!smithed.entity,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.mob"]}

execute as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.follow_range base set 400

execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.5 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.2 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.4 multiply_base

execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.7 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.25 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.6 multiply_base

execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.9 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.3 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.8 multiply_base

execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 2.1 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.35 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:phantom,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2 multiply_base


#=======Spider=======#
execute as @e[type=minecraft:spider,tag=!h-nigh.mob,tag=!smithed.entity,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.mob"]}

execute as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.follow_range base set 400

execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.5 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.2 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.4 multiply_base

execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.7 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.25 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.6 multiply_base

execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 1.9 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.3 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.6 multiply_base

execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.attack_damage modifier add 15213119-0002-0002-0002-000000003943 h-nigh.strength 2.1 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.35 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:spider,tag=h-nigh.mob] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2 multiply_base


#=======Creeper======#
execute as @e[type=minecraft:creeper,tag=!h-nigh.mob,tag=!smithed.entity,tag=!h-nigh.ignore] run data merge entity @s {Tags:["h-nigh.mob"]}

execute as @e[type=minecraft:creeper,tag=h-nigh.mob] run attribute @s minecraft:generic.follow_range base set 400
execute as @e[type=minecraft:creeper,tag=h-nigh.mob] run data merge entity @s[type=minecraft:creeper,tag=h-nigh.mob] {ExplosionRadius:6b}

execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.2 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.4 multiply_base

execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.25 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.6 multiply_base

execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.3 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.8 multiply_base

execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.35 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:0}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2 multiply_base

#=Charged=#

execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.4 multiply_base
execute if score #difficulty h-nigh.config matches 1 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 1.8 multiply_base

execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.5 multiply_base
execute if score #difficulty h-nigh.config matches 2 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2.2 multiply_base

execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.6 multiply_base
execute if score #difficulty h-nigh.config matches 3 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 2.6 multiply_base

execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.movement_speed modifier add 15213119-0002-0002-0002-000000003943 h-nigh.speed 0.7 multiply_base
execute if score #difficulty h-nigh.config matches 4 as @e[type=minecraft:creeper,tag=h-nigh.mob,nbt={powered:1}] run attribute @s minecraft:generic.max_health modifier add 15213119-0002-0002-0002-000000003943 h-nigh.health 3 multiply_base