advancement revoke @s only kattersstructures:technical/consume_whisky
tag @s add katters_structures.alcohol_poisoning

execute store result score $kattersstructures.mesa_village.alcohol.poisoning kattersstructures.technical run random value 40..70
scoreboard players operation $kattersstructures.mesa_village.alcohol.poisoning kattersstructures.technical *= $10 kattersstructures.technical
scoreboard players operation @s kattersstructures.alcohol_poisoning += $kattersstructures.mesa_village.alcohol.poisoning kattersstructures.technical