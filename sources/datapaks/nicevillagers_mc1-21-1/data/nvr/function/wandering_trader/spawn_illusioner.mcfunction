execute at @n[type=wandering_trader,tag=nvr.illusioner] run particle minecraft:poof ~ ~1 ~ .5 1 .5 0 50 normal
execute at @n[type=wandering_trader,tag=nvr.illusioner] run summon illusioner ~ ~ ~
execute at @s run tp @n[type=wandering_trader,tag=nvr.illusioner] ~ -100 ~
execute at @s run kill @n[type=wandering_trader,tag=nvr.illusioner]

advancement revoke @s only nvr:illusioner
advancement grant @p only nvr:progression/illusioner