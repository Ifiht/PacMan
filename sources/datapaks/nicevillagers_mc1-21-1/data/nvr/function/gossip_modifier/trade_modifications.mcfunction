## add negative gossips
$execute as @n[type=villager] unless data entity @s Brain.memories.minecraft:meeting_point.value unless data entity @s Brain.memories.minecraft:home.value run data merge entity @s {Gossips:[{Type:"minor_negative",Value:200,Target:$(UUID)}]}
$execute as @n[type=villager] if data entity @s Brain.memories.minecraft:meeting_point.value unless data entity @s Brain.memories.minecraft:home.value run data merge entity @s {Gossips:[{Type:"minor_negative",Value:75,Target:$(UUID)}]}
$execute as @n[type=villager] unless data entity @s Brain.memories.minecraft:meeting_point.value if data entity @s Brain.memories.minecraft:home.value run data merge entity @s {Gossips:[{Type:"minor_negative",Value:50,Target:$(UUID)}]}

## add positive gossips
$execute as @n[type=villager] if data entity @s Brain.memories.minecraft:meeting_point.value if data entity @s Brain.memories.minecraft:home.value run data merge entity @s {Gossips:[{Type:"minor_positive",Value:200,Target:$(UUID)}]}
$execute as @n[type=villager] unless data entity @s Brain.memories.minecraft:meeting_point.value if data entity @s Brain.memories.minecraft:home.value run data merge entity @s {Gossips:[{Type:"minor_positive",Value:75,Target:$(UUID)}]}
$execute as @n[type=villager] if data entity @s Brain.memories.minecraft:meeting_point.value unless data entity @s Brain.memories.minecraft:home.value run data merge entity @s {Gossips:[{Type:"minor_positive",Value:50,Target:$(UUID)}]}