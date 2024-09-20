# detect if the barrel is open
execute if block ~ ~ ~ barrel[open=true] run function tooltrims:toolsmithing_table/slots_open

# detect if there's a container interacting
execute if predicate tooltrims:detect_containers run function tooltrims:fixes/container/remove
execute as @e[type=hopper_minecart, distance=..2] run function tooltrims:fixes/container/hopper_minecarts_deactive

# detect if the barrel has just been closed
execute if entity @s[tag=310_toolsmithing_table_open] if block ~ ~ ~ barrel[open=false] run function tooltrims:fixes/barrel_close

# dectect if a player destroyed the barrel or if it is outside of the height limit
execute unless block ~ ~ ~ barrel run function tooltrims:toolsmithing_table/placement/destroy