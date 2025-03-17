scoreboard players set 20tick trueEnding_clock 0
schedule function true_ending:clocks/20tick 20t


execute unless entity @e[type=ender_dragon,tag=trueEnding_dragon_particlechecked,tag=!trueEnding_mirrordragon,tag=!trueEnding_dragon_noAI] run bossbar set true_ending:extra_health players