
scoreboard players set music_boss trueEnding_settings 0

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1

function true_ending:settings/2

stopsound @a[scores={trueEnding_music=0..}] * true_ending:music.dragon
scoreboard players reset @a trueEnding_music