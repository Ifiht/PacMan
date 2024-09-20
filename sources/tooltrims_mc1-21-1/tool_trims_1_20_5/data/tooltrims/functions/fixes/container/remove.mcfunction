execute if block ~1 ~ ~ minecraft:hopper run setblock ~1 ~ ~ minecraft:hopper[facing=east]
execute if block ~-1 ~ ~ minecraft:hopper run setblock ~-1 ~ ~ minecraft:hopper[facing=west]
execute if block ~ ~1 ~ minecraft:hopper run setblock ~ ~1 ~ minecraft:hopper[facing=north]
execute if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ minecraft:air destroy
execute if block ~ ~ ~1 minecraft:hopper run setblock ~ ~ ~1 minecraft:hopper[facing=south]
execute if block ~ ~ ~-1 minecraft:hopper run setblock ~ ~ ~-1 minecraft:hopper[facing=north]

execute if block ~1 ~ ~ minecraft:dropper run setblock ~1 ~ ~ minecraft:dropper[facing=east]
execute if block ~-1 ~ ~ minecraft:dropper run setblock ~-1 ~ ~ minecraft:dropper[facing=west]
execute if block ~ ~1 ~ minecraft:dropper run setblock ~ ~1 ~ minecraft:dropper[facing=up]
execute if block ~ ~-1 ~ minecraft:dropper run setblock ~ ~-1 ~ minecraft:dropper[facing=down]
execute if block ~ ~ ~1 minecraft:dropper run setblock ~ ~ ~1 minecraft:dropper[facing=south]
execute if block ~ ~ ~-1 minecraft:dropper run setblock ~ ~ ~-1 minecraft:dropper[facing=north]