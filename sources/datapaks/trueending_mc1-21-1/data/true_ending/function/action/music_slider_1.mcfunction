data modify storage true_ending:storage settings.dragon_music_slider set value "record"

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1

function true_ending:settings/2

stopsound @a[scores={trueEnding_music=0..}] * true_ending:music.dragon
scoreboard players reset @a trueEnding_music